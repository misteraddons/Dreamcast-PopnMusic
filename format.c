#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "format.h"
#ifdef PICO_HW
#include "hardware/flash.h"
#endif

enum EFileType
{
	FileType_NoFile = 0x00,
	FileType_Data = 0x33,
	FileType_Game = 0xCC
};

enum EFATType
{
	FATType_Free = 0xFFFC,
	FATType_EOF = 0xFFFA
};

typedef struct Date_s
{
	uint8_t Century;
	uint8_t Year;
	uint8_t Month;
	uint8_t Day;
	uint8_t Hour;
	uint8_t Minute;
	uint8_t Second;
	uint8_t DayOfWeek;
} Date;

typedef struct DirectoryEntry_s
{
	uint8_t FileType;
	uint8_t CopyProtect;
	uint16_t FirstBlock;
	char Name[12];
	Date Creation;
	uint16_t SizeInBlocks;
	uint16_t HeaderOffset;
	uint8_t Padding[4];
} DirectoryEntry;

typedef struct RootBlock_s
{
	uint8_t Magic[16];
	uint8_t CustomColor;
	uint8_t CustomColorBlue;
	uint8_t CustomColorGreen;
	uint8_t CustomColorRed;
	uint8_t CustomColorAlpha;
	uint8_t Padding[27];
	Date Format;
	uint8_t Padding2[8];
    uint16_t TotalSize;             // Seems to be the same as memory info but with a set bit in last uint
	uint16_t ParitionNumber;
	uint16_t SystemArea;
	uint16_t FATBlock;
	uint16_t FATSizeInBlocks;
	uint16_t DirectoryBlock;
	uint16_t DirectorySizeInBlocks;
	uint16_t IconShape;
	uint16_t NumberOfUserBlocks;
    uint16_t NumSaveBlocks;
    uint32_t Unknown;
} RootBlock;

// ICONDATA_VMS generated by make_icon.cpp
static const uint8_t IconData[0x2C0] =
{
	0x50, 0x6F, 0x70, 0x27, 0x6E, 0x20, 0x4D, 0x75, 0x73, 0x69, 0x63, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x01, 0xEB, 0x80, 0x00, 0x09, 0xF7, 0xC0, 0x00, 0x1D, 0xD6, 0xC0, 0x1F, 0x36, 0xCA, 0x40, 0x1F, 0xB2, 0xCA, 0x40,
	0x1E, 0xB2, 0xFA, 0x40, 0x0E, 0x5E, 0xFA, 0x00, 0x0E, 0x5E, 0xF0, 0x00, 0x07, 0xDE, 0xE0, 0x00, 0x07, 0xC0, 0xC0, 0x00, 0x07, 0xC0, 0xC0, 0x00, 0x07, 0x80, 0xC0, 0x00, 0x03, 0x00, 0xC0, 0x00,
	0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x03, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x75, 0xE0, 0x00, 0x12, 0xC5, 0x80, 0x01, 0xD2, 0x65, 0x80, 0x0F, 0xD3, 0x17, 0x80,
	0x1F, 0x79, 0x4E, 0xE0, 0x1B, 0x2B, 0x70, 0x60, 0x09, 0x2F, 0x00, 0x00, 0x09, 0xA0, 0x00, 0x00, 0x0C, 0x80, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x09, 0x00, 0x09, 0xF0, 0x09, 0xF0, 0x48, 0xF4, 0x96, 0xFA, 0xD1, 0xFE, 0x57, 0xF5, 0x38, 0xF3, 0xE0, 0xFF, 0x67, 0xF7, 0xC3, 0xFD, 0xB3, 0xFC, 0xA4, 0xFB, 0x28, 0xF2, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x56, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x26, 0x61, 0x14, 0x89, 0x79, 0x91, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x11, 0x65, 0x55, 0x54, 0xAB, 0x58, 0x8C, 0x10, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x7C, 0xAC, 0x48, 0x88, 0x88, 0x6A, 0x88, 0x85, 0x10, 0x00, 0x00, 0x00, 0x13, 0x97, 0x99, 0x21, 0x48, 0x88, 0xC5, 0x88, 0x45, 0x4A, 0x86, 0xA8, 0x10, 0x00, 0x00,
	0x02, 0x1A, 0x88, 0x88, 0xC1, 0xA8, 0xB5, 0x5B, 0x88, 0x1B, 0xAB, 0x81, 0xC8, 0x20, 0x00, 0x00, 0x01, 0x38, 0x88, 0x88, 0x89, 0x88, 0x94, 0x8C, 0x88, 0x9C, 0xAC, 0x8D, 0x48, 0x60, 0x00, 0x00,
	0x01, 0x1A, 0x88, 0x8C, 0x8B, 0xA8, 0x44, 0x8C, 0x88, 0x58, 0xAC, 0x86, 0x48, 0x90, 0x00, 0x00, 0x02, 0x19, 0x88, 0x51, 0xB8, 0xB8, 0x85, 0x84, 0x88, 0x88, 0xA4, 0x83, 0x3B, 0x10, 0x00, 0x00,
	0x00, 0x11, 0xA8, 0x89, 0x48, 0xC8, 0x88, 0x84, 0x58, 0x88, 0x41, 0x92, 0x11, 0x10, 0x00, 0x00, 0x00, 0x11, 0x48, 0x85, 0x58, 0x4A, 0x88, 0x57, 0xA8, 0x59, 0x21, 0x11, 0x22, 0x00, 0x00, 0x00,
	0x00, 0x01, 0x68, 0x88, 0x88, 0x43, 0xCB, 0x61, 0xA8, 0xA1, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x15, 0x88, 0x88, 0x61, 0x11, 0x1D, 0x88, 0x51, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x01, 0x1A, 0x88, 0x84, 0x17, 0x21, 0x19, 0x88, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x1C, 0x88, 0x41, 0x10, 0x00, 0x17, 0xAA, 0x91, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x14, 0x88, 0xC2, 0x00, 0x00, 0x21, 0x11, 0x1D, 0x12, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x88, 0xA2, 0x00, 0x00, 0x01, 0x11, 0xD1, 0xC5, 0x70, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x1C, 0x88, 0xB2, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0x72, 0x11, 0x10, 0x00, 0x00, 0x00, 0x00, 0x14, 0x88, 0x41, 0x00, 0x0D, 0x21, 0x16, 0x61, 0x7C, 0x26, 0xAA, 0x42, 0x00, 0x00,
	0x00, 0x00, 0x2D, 0x49, 0x17, 0x11, 0x13, 0xB3, 0x48, 0x8A, 0x98, 0x9A, 0x8A, 0xA4, 0x10, 0x00, 0x00, 0x00, 0x11, 0x17, 0x97, 0x9A, 0x39, 0x84, 0xA8, 0x4C, 0xC8, 0x48, 0x8D, 0x79, 0x10, 0x00,
	0x00, 0x02, 0x79, 0x95, 0x8A, 0x48, 0x4D, 0x5B, 0xB8, 0xA4, 0x78, 0xB8, 0x86, 0x31, 0x10, 0x00, 0x02, 0xD4, 0xA8, 0x88, 0x88, 0xC8, 0xC1, 0xAA, 0x3C, 0x4A, 0xC5, 0xAA, 0x84, 0x64, 0x20, 0x00,
	0x01, 0x98, 0x88, 0x88, 0x95, 0xAA, 0xA1, 0xC8, 0xC8, 0xCC, 0x5A, 0xA4, 0x88, 0x8B, 0x10, 0x00, 0x01, 0xD5, 0x84, 0xA8, 0x3C, 0x8B, 0x8B, 0x58, 0xC5, 0x88, 0xB4, 0xB7, 0xB8, 0xA9, 0x10, 0x00,
	0x00, 0x1C, 0x89, 0x48, 0x49, 0x8C, 0x58, 0x85, 0x49, 0x44, 0xD1, 0xD1, 0x11, 0x11, 0x10, 0x00, 0x00, 0x19, 0x8C, 0x75, 0xA1, 0xAC, 0x94, 0x9D, 0x11, 0x11, 0x11, 0x12, 0x11, 0x11, 0x00, 0x00,
	0x00, 0x11, 0xA5, 0x74, 0xA1, 0x33, 0x11, 0x11, 0x1D, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x48, 0x61, 0x11, 0x11, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x01, 0x1D, 0x11, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x11, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

static void AllocateFAT(uint16_t *FAT, uint16_t StartBlock, uint16_t NumBlocks)
{
	uint32_t EndBlock = StartBlock + NumBlocks - 1;
	FAT[StartBlock] = FATType_EOF;
	while (StartBlock != EndBlock)
	{
		StartBlock++;
		FAT[StartBlock]= StartBlock - 1;
	}
}

uint32_t CheckFormatted(uint8_t* MemoryCard)
{
    uint32_t SectorDirty = 0;
    const RootBlock Root =
	{
		{0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55},
		1, 0, 255, 255, 255, {0}, {0x20, 0x21, 0x03, 0x02, 0x09, 0x00, 0x00, 0x01}, {0},
		CARD_BLOCKS - 1, 0, ROOT_BLOCK, FAT_BLOCK, NUM_FAT_BLOCKS, DIRECTORY_BLOCK, NUM_DIRECTORY_BLOCKS, 0, SAVE_BLOCK, NUM_SAVE_BLOCKS, 0x800000
	};
    if (memcmp(&MemoryCard[ROOT_BLOCK * BLOCK_SIZE], Root.Magic, sizeof(Root.Magic)) != 0)
    {
		// If not formatted then initialize ourselves. Saves user a step + means we can have a fancy icon
		uint32_t StartOfDirectoryBlock = Root.DirectoryBlock - Root.DirectorySizeInBlocks + 1;
		memset(&MemoryCard[StartOfDirectoryBlock * BLOCK_SIZE], 0, (256 - StartOfDirectoryBlock) * BLOCK_SIZE);
		memcpy(&MemoryCard[ROOT_BLOCK * BLOCK_SIZE], &Root, sizeof(Root));

		const DirectoryEntry IconDataVMS = {FileType_Data, 0, SAVE_BLOCK - 2, "ICONDATA_VMS", {0x20, 0x21, 0x03, 0x02, 0x09, 0x00, 0x00, 0x01}, 2, 0};
		memcpy(&MemoryCard[Root.DirectoryBlock * BLOCK_SIZE], &IconDataVMS, sizeof(IconDataVMS));
		memcpy(&MemoryCard[IconDataVMS.FirstBlock * BLOCK_SIZE], &IconData, sizeof(IconData));

		uint32_t StartOfFATBlock = Root.FATBlock - Root.FATSizeInBlocks + 1;
		uint16_t *FAT = (uint16_t*)&MemoryCard[StartOfFATBlock * BLOCK_SIZE];
		for (uint32_t Block = 0; Block < Root.FATSizeInBlocks * (BLOCK_SIZE / sizeof(uint16_t)); Block++)
		{
			FAT[Block] = FATType_Free;
		}
		AllocateFAT(FAT, ROOT_BLOCK, 1);
		AllocateFAT(FAT, StartOfFATBlock, Root.FATSizeInBlocks);
		AllocateFAT(FAT, StartOfDirectoryBlock, Root.DirectorySizeInBlocks);
		FAT[IconDataVMS.FirstBlock] = IconDataVMS.FirstBlock + 1;
		FAT[IconDataVMS.FirstBlock + 1] = FATType_EOF;

#if PICO_HW
		// Everything above StartOfDirectoryBlock now needs writing to flash + icon data
		SectorDirty |= ~((1u << ((StartOfDirectoryBlock * BLOCK_SIZE) / FLASH_SECTOR_SIZE)) - 1);
		SectorDirty |= 1u << ((IconDataVMS.FirstBlock * BLOCK_SIZE) / FLASH_SECTOR_SIZE);
 #endif
	}
    return SectorDirty;
}