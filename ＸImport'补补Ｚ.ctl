{"parameters":{"code":"/* ＸGenerated Code (IMPORT)'补补补补补补Ｚ */\n/* ＸSource File: 10个表单.xlsx''补补补补Ｚ */\n/* ＸSource Path: /segatest/I18N/测试Dommy中文文件夹/10个表单.xlsx''补补补补Ｚ */\n/* ＸCode generated on: 2020年7月7日 下午4:43:38''补补补补补补Ｚ */\n\nproc sql;\n%if %sysfunc(exist(WORK.IMPORT)) %then %do;\n    drop table WORK.IMPORT;\n%end;\n%if %sysfunc(exist(WORK.IMPORT,VIEW)) %then %do;\n    drop view WORK.IMPORT;\n%end;\nquit;\n\n\n\nFILENAME REFFILE DISK '/segatest/I18N/测试Dommy中文文件夹/10个表单.xlsx';\n\nPROC IMPORT DATAFILE=REFFILE\n\tDBMS=XLSX\n\tOUT=WORK.IMPORT;\n\tGETNAMES=YES;\nRUN;\n\nPROC CONTENTS DATA=WORK.IMPORT; RUN;\n\n\n","logHTML":"","resultsHTML":"","outputType":"TABLE","outputName":"IMPORT","outputLocation":"WORK","fileName":"10个表单.xlsx","filePath":"/segatest/I18N/测试Dommy中文文件夹/10个表单.xlsx","pathLabel":"/segatest/I18N/测试Dommy中文文件夹/10个表单.xlsx","importPathLabel":"/segatest/I18N/测试Dommy中文文件夹/ＸImport'补补Ｚ.ctl","fileType":"","fileSheet":"","fileTable":"","eolDelimiterOption":"default","colDelimiterOption":"","encoding":"UTF-8"},"type":"importObject","version":5.2}