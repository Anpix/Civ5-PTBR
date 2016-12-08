-- Civ5 Localization Database Schema
-- Created by Shaun Seckman (May 7th 2010)
-- Portuguese by Rafael Tavares (Dec 8th 2016)
-- 
-- Revision History
-- 01/03/11:	Added Korean table.
-- 10/26/10:	Modified schema for Language fallback support.
--				Added TranslatedText and LanguagePriorities.
-- 12/08/16:    Translation Portuguese added
--		  
-----------------------------------------------------------------

-- ScannedFiles table used for caching database.
CREATE TABLE ScannedFiles("Path" TEXT NOT NULL PRIMARY KEY, "DateTime" INTEGER NOT NULL);

CREATE TABLE Languages(	"ID" INTEGER PRIMARY KEY AUTOINCREMENT,
						"Type" TEXT NOT NULL UNIQUE,
						"Name" TEXT NOT NULL,
						"TableName" TEXT NOT NULL,
						"TagColumnName" TEXT DEFAULT "Tag",					-- This column has been deprecated.  Always use "Tag".
						"TextColumnName" TEXT DEFAULT "Text",				-- This column has been deprecated.  Always use "Text".
						"PluralityColumnName" TEXT DEFAULT "Plurality",		-- This column has been deprecated.  Always use "Plurality".
						"GenderColumnName" TEXT DEFAULT "Gender",			-- This column has been deprecated.  Always use "Gender".
						"PluralRule" INTEGER DEFAULT 1,
						"UseExtendedFont" INTEGER DEFAULT 0,
						"FontName" TEXT DEFAULT "MS PGothic",
						"FontWidthScale" FLOAT DEFAULT 0.4,
						"FontHeightScale" FLOAT DEFAULT 0.8);
						
CREATE TABLE LocalizedText("Language" TEXT,
						   "Tag" TEXT,
						   "Text" TEXT,						
						   "Gender" TEXT,
						   "Plurality" TEXT,
						   PRIMARY KEY(Language, Tag));
							
CREATE TABLE LanguagePriorities("LanguageSet" TEXT,
								"Language" TEXT,
								"Priority" INT,
								PRIMARY KEY(LanguageSet, Language));
							
CREATE TABLE SpokenLanguages( "ID" INTEGER PRIMARY KEY AUTOINCREMENT,
							  "Type" TEXT NOT NULL UNIQUE,
							  "DisplayName" TEXT NOT NULL,
							  "Path" TEXT NOT NULL);

CREATE TABLE Language_en_US("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
							"Tag" TEXT UNIQUE NOT NULL,
							"Text" TEXT NOT NULL,
							"Gender" TEXT,
							"Plurality" TEXT);
													
CREATE TABLE Language_DE_DE("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
												
CREATE TABLE Language_ES_ES("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);

CREATE TABLE Language_FR_FR("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
												
CREATE TABLE Language_IT_IT("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
						
CREATE TABLE Language_JA_JP("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
						
CREATE TABLE Language_RU_RU("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
						
CREATE TABLE Language_PL_PL("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);

CREATE TABLE Language_KO_KR("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
						
CREATE TABLE Language_ZH_HANT_HK("ID" INTEGER PRIMARY KEY AUTOINCREMENT,
							"Tag" TEXT UNIQUE NOT NULL,
							"Text" TEXT NOT NULL,
							"Gender" TEXT,
							"Plurality" TEXT);			

CREATE TABLE Language_PT_BR("ID" INTEGER PRIMARY KEY AUTOINCREMENT, 
						"Tag" TEXT UNIQUE NOT NULL,
						"Text" TEXT NOT NULL,
						"Gender" TEXT,
						"Plurality" TEXT);
				
CREATE INDEX "LocalizedText_ByTag" ON "LocalizedText" ("Tag" ASC);
CREATE INDEX "LanguagePriorities_ByLanguageSet" ON "LanguagePriorities" ("LanguageSet" ASC);
