-- Civ5 DLC Localization Schema
-- Created by Shaun Seckman (April 23rd 2012)
-- Portuguese by Rafael Tavares (December 08th 2016)
-- 
-----------------------------------------------------------------

-- ScannedFiles table used for caching database.
CREATE TABLE ScannedFiles("Path" TEXT NOT NULL PRIMARY KEY, "DateTime" INTEGER NOT NULL);

CREATE TABLE LocalizedText("Language" TEXT,
						   "Tag" TEXT,
						   "Text" TEXT,						
						   "Gender" TEXT,
						   "Plurality" TEXT,
						   PRIMARY KEY(Language, Tag));
-- English		
CREATE VIEW Language_en_US AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'en_US';
CREATE TRIGGER Language_en_US_insert INSTEAD OF INSERT ON Language_en_US BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('en_US', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_en_US_update INSTEAD OF UPDATE ON Language_en_US BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'en_US' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_en_US_delete INSTEAD OF DELETE ON Language_en_US BEGIN DELETE from LocalizedText where Language = 'en_US' and Tag = OLD.Tag; END;
			
-- German
CREATE VIEW Language_DE_DE AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'de_DE';
CREATE TRIGGER Language_DE_DE_insert INSTEAD OF INSERT ON Language_DE_DE BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('de_DE', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_DE_DE_update INSTEAD OF UPDATE ON Language_DE_DE BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'de_DE' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_DE_DE_delete INSTEAD OF DELETE ON Language_DE_DE BEGIN DELETE from LocalizedText where Language = 'de_DE' and Tag = OLD.Tag; END;

-- Spanish
CREATE VIEW Language_ES_ES AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'es_ES';
CREATE TRIGGER Language_ES_ES_insert INSTEAD OF INSERT ON Language_ES_ES BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('es_ES', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_ES_ES_update INSTEAD OF UPDATE ON Language_ES_ES BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'es_ES' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_ES_ES_delete INSTEAD OF DELETE ON Language_ES_ES BEGIN DELETE from LocalizedText where Language = 'es_ES' and Tag = OLD.Tag; END;

-- French
CREATE VIEW Language_FR_FR AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'fr_FR';
CREATE TRIGGER Language_FR_FR_insert INSTEAD OF INSERT ON Language_FR_FR BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('fr_FR', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_FR_FR_update INSTEAD OF UPDATE ON Language_FR_FR BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'fr_FR' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_FR_FR_delete INSTEAD OF DELETE ON Language_FR_FR BEGIN DELETE from LocalizedText where Language = 'fr_FR' and Tag = OLD.Tag; END;
	
-- Italian	
CREATE VIEW Language_IT_IT AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'it_IT';
CREATE TRIGGER Language_IT_IT_insert INSTEAD OF INSERT ON Language_IT_IT BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('it_IT', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_IT_IT_update INSTEAD OF UPDATE ON Language_IT_IT BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'it_IT' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_IT_IT_delete INSTEAD OF DELETE ON Language_IT_IT BEGIN DELETE from LocalizedText where Language = 'it_IT' and Tag = OLD.Tag; END;

-- Japanese			
CREATE VIEW Language_JA_JP AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'ja_JP';
CREATE TRIGGER Language_JA_JP_insert INSTEAD OF INSERT ON Language_JA_JP BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('ja_JP', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_JA_JP_update INSTEAD OF UPDATE ON Language_JA_JP BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'ja_JP' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_JA_JP_delete INSTEAD OF DELETE ON Language_JA_JP BEGIN DELETE from LocalizedText where Language = 'ja_JP' and Tag = OLD.Tag; END;
	
-- Russian		
CREATE VIEW Language_RU_RU AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'ru_RU';
CREATE TRIGGER Language_RU_RU_insert INSTEAD OF INSERT ON Language_RU_RU BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('ru_RU', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_RU_RU_update INSTEAD OF UPDATE ON Language_RU_RU BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.PLurality WHERE Language = 'ru_RU' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_RU_RU_delete INSTEAD OF DELETE ON Language_RU_RU BEGIN DELETE from LocalizedText where Language = 'ru_RU' and Tag = OLD.Tag; END;

-- Polish			
CREATE VIEW Language_PL_PL AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'pl_PL';
CREATE TRIGGER Language_PL_PL_insert INSTEAD OF INSERT ON Language_PL_PL BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('pl_PL', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_PL_PL_update INSTEAD OF UPDATE ON Language_PL_PL BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'pl_PL' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_PL_PL_delete INSTEAD OF DELETE ON Language_PL_PL BEGIN DELETE from LocalizedText where Language = 'pl_PL' and Tag = OLD.Tag; END;
			
-- Korean
CREATE VIEW Language_KO_KR AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'ko_KR';
CREATE TRIGGER Language_KO_KR_insert INSTEAD OF INSERT ON Language_KO_KR BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('ko_KR', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_KO_KR_update INSTEAD OF UPDATE ON Language_KO_KR BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'ko_KR' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_KO_KR_delete INSTEAD OF DELETE ON Language_KO_KR BEGIN DELETE from LocalizedText where Language = 'ko_KR' and Tag = OLD.Tag; END;									

-- Chinese
CREATE VIEW Language_ZH_HANT_HK AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'zh_Hant_HK';
CREATE TRIGGER Language_ZH_HANT_HK_insert INSTEAD OF INSERT ON Language_ZH_HANT_HK BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('zh_Hant_HK', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_ZH_HANT_HK_update INSTEAD OF UPDATE ON Language_ZH_HANT_HK BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'zh_Hant_HK' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_ZH_HANT_HK_delete INSTEAD OF DELETE ON Language_ZH_HANT_HK BEGIN DELETE from LocalizedText where Language = 'zh_Hant_HK' and Tag = OLD.Tag; END;									

-- Portuguese
CREATE VIEW Language_PT_BR AS SELECT Tag, Text, Gender, Plurality from LocalizedText where Language = 'pt_BR';
CREATE TRIGGER Language_PT_BR_insert INSTEAD OF INSERT ON Language_pt_BR BEGIN insert into LocalizedText(Language, Tag, Text, Gender, Plurality) VALUES('pt_BR', NEW.Tag, NEW.Text, NEW.Gender, NEW.Plurality); END;
CREATE TRIGGER Language_PT_BR_update INSTEAD OF UPDATE ON Language_pt_BR BEGIN UPDATE LocalizedText SET Text = NEW.Text , Gender = NEW.Gender, Plurality = NEW.Plurality WHERE Language = 'pt_BR' and Tag = NEW.Tag; END;
CREATE TRIGGER Language_PT_BR_delete INSTEAD OF DELETE ON Language_pt_BR BEGIN DELETE from LocalizedText where Language = 'pt_BR' and Tag = OLD.Tag; END;									


CREATE INDEX "LocalizedText_ByTag" ON "LocalizedText" ("Tag" ASC);

pragma user_version = 2;