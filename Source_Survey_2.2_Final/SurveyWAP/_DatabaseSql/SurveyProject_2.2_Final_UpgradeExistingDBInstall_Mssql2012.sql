USE [yourdatabase]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsSurveyGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsSurveyGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsMoveUp]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsMoveUp]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsMoveDown]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsMoveDown]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetEnabled]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsGetEnabled]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetAvailableList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsGetAvailableList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsEnableForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsEnableForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsDisableForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsDisableForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsDeleteForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsDeleteForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsAddForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spWebSecurityAddInsAddForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterUpdateUserName]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterUpdateUserName]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterUIdAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterUIdAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVotersDeleteForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVotersDeleteForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterResumeSession]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterResumeSession]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueGetUId]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationQueueGetUId]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationQueueGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueDeleteByEmail]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationQueueDeleteByEmail]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationQueueDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationQueueAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationAnsweredGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterInvitationAnsweredGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterImport]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterImport]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetUnvalidatedCount]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetUnvalidatedCount]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetPivotTextEntries]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetPivotTextEntries]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetPaged]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetPaged]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetMonthlyStats]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetMonthlyStats]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetFullPivot]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetFullPivot]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetDailyStat]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetDailyStat]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetByUserName]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetByUserName]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterGetAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterForExport]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterForExport]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterFilter]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterFilter]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterExportCSVData]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterExportCSVData]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteUnvalidated]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeleteUnvalidated]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteResumeSession]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeleteResumeSession]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteQuestionAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeleteQuestionAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeletePageAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeletePageAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeleteAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDeleteAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterCheckIfUIDExists]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterCheckIfUIDExists]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterCheckIfIPExists]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterCheckIfIPExists]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAnswersImport]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterAnswersImport]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAnswersAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterAnswersAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spVoterAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSurveyUnAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSurveyUnAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSurveyAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSurveyAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSettingUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSettingGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSettingAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSecurityRightGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserSecurityRightGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleUnAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserRoleUnAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleGetUnAssignedList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserRoleGetUnAssignedList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleGetAssignedList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserRoleGetAssignedList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserRoleAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRegularExpressionAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserRegularExpressionAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserIsAdmin]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserIsAdmin]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetUserIdFromUserName]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetUserIdFromUserName]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetListByFilter]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetListByFilter]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetData]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetData]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetAdminCount]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserGetAdminCount]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAnswerTypeUnAssignAllUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserAnswerTypeUnAssignAllUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAnswerTypeAssignUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserAnswerTypeAssignUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUserAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spUnAuthentifiedUserActionGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spUnAuthentifiedUserActionGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spTreeNodesGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spTreeNodesGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spTreeGetFolders]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spTreeGetFolders]
GO
/****** Object:  StoredProcedure [dbo].[vts_spTokenGetForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spTokenGetForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyValidatePassword]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyValidatePassword]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateUnAuthentifiedUserAction]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyUpdateUnAuthentifiedUserAction]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateNSurveySubmissions]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyUpdateNSurveySubmissions]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateFriendlyName]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyUpdateFriendlyName]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateASPNetSubmissions]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyUpdateASPNetSubmissions]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenValidate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyTokenValidate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyTokenUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenDeleteMultiple]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyTokenDeleteMultiple]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenAddMultiple]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyTokenAddMultiple]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySkipLogicRuleCopyToSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveySkipLogicRuleCopyToSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySetFolder]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveySetFolder]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySaveTokenUserDataUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveySaveTokenUserDataUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySaveTokenUserDataGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveySaveTokenUserDataGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyOnlyInvitedUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyOnlyInvitedUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyOnlyInvitedGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyOnlyInvitedGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeClearSettings]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeClearSettings]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMovePageBreakUp]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMovePageBreakUp]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMovePageBreakDown]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMovePageBreakDown]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMessageConditionUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionsGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMessageConditionsGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionsGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMessageConditionsGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionDeleteByID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMessageConditionDeleteByID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyMessageConditionAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyLayoutUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyLayoutUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyLayoutGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyLayoutGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIsScored]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIsScored]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIPRangeUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIPRangeDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIPRangeAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPExpirationUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIPExpirationUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPExpirationGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIPExpirationGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyInsertPageBreak]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyInsertPageBreak]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIncrementViews]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIncrementViews]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIncrementResultsViews]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyIncrementResultsViews]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyHasPageBranching]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyHasPageBranching]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetUnAuthentifiedUserAction]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetUnAuthentifiedUserAction]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetUnAssignedListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetUnAssignedListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetSurveyIdFromGuid]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetSurveyIdFromGuid]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetSurveyIdFromFriendlyName]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetSurveyIdFromFriendlyName]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetPipeDataFromQuestionId]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetPipeDataFromQuestionId]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetPagesNumber]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetPagesNumber]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetListByTitle]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetListByTitle]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetLibraryList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetLibraryList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetForExport]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetForExport]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetFirstIDForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetFirstIDForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetFirstID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetFirstID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetCookieExpiration]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetCookieExpiration]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetAssignedListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetAssignedListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetAllDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetAllDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetActivated]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyGetActivated]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyExists]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyExists]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyEntryQuotaUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaReset]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyEntryQuotaReset]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaIncreaseEntry]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyEntryQuotaIncreaseEntry]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyEntryQuotaGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyEntryDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyDeletePageBreak]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyDeletePageBreak]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyDeleteByID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyDeleteByID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyCookieExpirationUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyCookieExpirationUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyClone]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyClone]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyCheckUserAssigned]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyCheckUserAssigned]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetForPage]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetForPage]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetDetailsForPage]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetDetailsForPage]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleDeleteById]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleDeleteById]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleCopyToSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleCopyToSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyBranchingRuleAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAllowMultipleNSurveyVotes]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyAllowMultipleNSurveyVotes]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAllowMultipleASPNetVotes]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyAllowMultipleASPNetVotes]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAccessPasswordUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyAccessPasswordUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAccessPasswordGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSurveyAccessPasswordGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSecurityRightGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spSecurityRightGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleSecurityRightDeleteAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleSecurityRightDeleteAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleSecurityRightAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleSecurityRightAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRoleAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spResumeModeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spResumeModeGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionSetBuiltIn]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionSetBuiltIn]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionGetListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetEditableListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionGetEditableListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spRegularExpressionAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleDeleteById]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleDeleteById]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSingleAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSingleAnswerableListWithoutChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetPageRangeForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetPageRangeForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetPagedForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetPagedForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetMatrixChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetMatrixChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetListForLibraryWithoutChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetListForLibraryWithoutChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetListForLibrary]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetListForLibrary]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetForLibrary]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsGetForLibrary]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSelectionModeGetSelectable]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSelectionModeGetSelectable]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSelectionModeGetForSingle]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSelectionModeGetForSingle]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionOptionUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionOptionGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionOptionDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionClone]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionOptionClone]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerGet]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerGet]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsAnswersGetForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionsAnswersGetForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionResetDisplayOrder]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionResetDisplayOrder]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionOrderUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionOrderUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMoveUp]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionMoveUp]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMoveDown]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionMoveDown]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMatrixDeleteAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionMatrixDeleteAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionListWithSelectableAnswersForPage]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionListWithSelectableAnswersForPage]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionListWithSelectableAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionListWithSelectableAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionLibrarySingleAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionLibrarySingleAnswerableListWithoutChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupUpdateDisplayID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupUpdateDisplayID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupGetByQuestionID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupGetByQuestionID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGroupAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetSelectableAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetSelectableAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetResults]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetResults]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetHierarchyForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetHierarchyForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetForExport]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetForExport]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabUnansweredResults]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetCrossTabUnansweredResults]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabTotalResults]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetCrossTabTotalResults]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabResults]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetCrossTabResults]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswersList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetAnswersList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswers]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetAnswers]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswerConnection]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionGetAnswerConnection]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionDeleteByID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionDeleteByID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopyToSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionCopyToSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopyToLibrary]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionCopyToLibrary]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopy]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionCopy]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCloneByID]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionCloneByID]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionChildUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildsClone]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionChildsClone]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildCloneById]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionChildCloneById]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionChildAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCheckUserAssigned]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionCheckUserAssigned]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableWithoutChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAnswerableWithoutChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAnswerableListWithoutChilds]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListForPageRange]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAnswerableListForPageRange]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListForPage]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAnswerableListForPage]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAnswerableList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spQuestionAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spProgressModeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spProgressModeGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spPageOptionUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spPageOptionUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spPageOptionGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spPageOptionGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spNSurveyGetVersion]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spNSurveyGetVersion]
GO
/****** Object:  StoredProcedure [dbo].[vts_spNotificationModeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spNotificationModeGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageGetEnabledForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMutliLanguageGetEnabledForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageDeleteForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMutliLanguageDeleteForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageCheckForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMutliLanguageCheckForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageAddForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMutliLanguageAddForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMultiLanguageTextUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextDeleteForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMultiLanguageTextDeleteForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextAdd]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMultiLanguageTextAdd]
GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spMultiLanguageGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLibraryUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLibraryGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLibraryGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLibraryDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLibraryAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spLayoutModeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spLayoutModeGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spIPRangeGetForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spIPRangeGetForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationUIDIsValid]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spInvitationUIDIsValid]
GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spInvitationLogGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spInvitationLogDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spInvitationLogAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spGetQuestionResults]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spGetQuestionResults]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFolderUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderMove]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFolderMove]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderGetByFolderId]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFolderGetByFolderId]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFolderDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFolderAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleGetForFilter]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterRuleGetForFilter]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterRuleDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterRuleAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterGetForSurvey]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterGetForSurvey]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFilterAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileValidatedGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileValidatedGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetListForGuid]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileGetListForGuid]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetGroupCount]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileGetGroupCount]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetData]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileGetData]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileDeleteExpired]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileDeleteExpired]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFileAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spFileAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailNotificationSettingsDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spEmailNotificationSettingsDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailNotificationSettingsAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spEmailNotificationSettingsAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spEmailAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeSetBuiltIn]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeSetBuiltIn]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeIsInUse]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeIsInUse]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetEditableListForUser]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetEditableListForUser]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetEditableList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetEditableList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeGetAll]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerTypeAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswersCloneByQuestionId]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswersCloneByQuestionId]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyStore]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerPropertyStore]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyRestore]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerPropertyRestore]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerPropertyDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMoveUp]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMoveUp]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMoveDown]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMoveDown]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixUpdate]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMatrixUpdate]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMatrixDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixChildAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMatrixChildAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerMatrixAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetSubscriptionList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerGetSubscriptionList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetScoreTotal]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerGetScoreTotal]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetPublishersList]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerGetPublishersList]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerGetDetails]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetAnswerTypeMode]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerGetAnswerTypeMode]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerDelete]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerDelete]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionUnSubscribeFromPublisher]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerConnectionUnSubscribeFromPublisher]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionSubscribeToPublisher]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerConnectionSubscribeToPublisher]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionCloneByQuestionId]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerConnectionCloneByQuestionId]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerAddNew]    Script Date: 20-12-2013 13:14:06 ******/
DROP PROCEDURE [dbo].[vts_spAnswerAddNew]
GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new answer to a question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerAddNew]
			@QuestionID int,
			@AnswerText nvarchar(4000), 
			@DefaultText nvarchar(4000), 
			@AnswerPipeAlias nvarchar(255), 
			@ImageURL nvarchar(1000), 
			@AnswerTypeID int,
			@Selected bit,
			@RatePart bit,
			@ScorePoint int,
			@DisplayOrder int = null,
			@RegularExpressionId int = null,
			@Mandatory bit,
			@AnswerIDText nvarchar(255),
			@AnswerAlias nvarchar(255),			
			@SliderRange nvarchar(3),
			@SliderValue int,
			@SliderMin int,
			@SliderMax int,
			@SliderAnimate bit,
			@SliderStep int,			
			@AnswerID int OUTPUT
AS

BEGIN TRANSACTION ADDNEWANSWER

if @Selected <> 0
BEGIN
-- Clear current selected status if we only one selection is possible for the question
UPDATE vts_tbAnswer SET selected = 0 
WHERE AnswerID IN (
	SELECT AnswerID FROM vts_tbAnswer 
	INNER JOIN vts_tbQuestion
		ON vts_tbAnswer.QuestionID = vts_tbQuestion.QuestionID
	INNER JOIN vts_tbQuestionSelectionMode
		ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
	WHERE 	
		vts_tbAnswer.QuestionID = (SELECT QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AND 
		vts_tbQuestionSelectionMode.TypeMode & 16 = 0)
END 

IF @DisplayOrder is null OR (@DisplayOrder is not null AND 
	Exists(SELECT DisplayOrder FROM vts_tbAnswer WHERE DisplayOrder = @DisplayOrder AND questionID = @QuestionID))
BEGIN
	select @DisplayOrder = ISNULL ( max(DisplayOrder) + 1 , 1)  FROM vts_tbAnswer WHERE questionID = @QuestionID
END


INSERT INTO vts_tbAnswer 
	( QuestionId, 
	AnswerText,
	DefaultText, 
	ImageURL, 
	AnswerTypeID,
	Selected,
	RatePart,
	ScorePoint,
	DisplayOrder,
	AnswerPipeAlias,
	RegularExpressionId,
	Mandatory,
	AnswerIDText,
	AnswerAlias,
	SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep
	
	)
VALUES
	 (@QuestionId, 
	@AnswerText, 
	@DefaultText, 
	@ImageURL, 
	@AnswerTypeID,
	@Selected,
	@RatePart,
	@ScorePoint,
	@DisplayOrder,
	@AnswerPipeAlias,
	@RegularExpressionId,
	@Mandatory,
	@AnswerIDText,
	@AnswerAlias,
	@SliderRange,
	@SliderValue,
	@SliderMin,
	@SliderMax,
	@SliderAnimate,
	@SliderStep
	
	)

set @AnswerID = scope_identity()

COMMIT TRANSACTION ADDNEWANSWER




GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionCloneByQuestionId]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerConnectionCloneByQuestionId] 
	@QuestionID int,
	@ClonedQuestionId int  
AS

-- Clone the answer publishers / subscribers 
INSERT INTO vts_tbAnswerConnection
	(PublisherAnswerId,
	SubscriberAnswerID)
SELECT      
	PublisherAnswerId = 
	(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionId AND 
		DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = ASB.PublisherAnswerId)),
	SubscriberAnswerId = 
	(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionId AND 
		DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = ASB.SubscriberAnswerId))
FROM vts_tbAnswerConnection ASB
INNER JOIN vts_tbAnswer A
	ON ASB.PublisherAnswerId = A.AnswerId
WHERE QuestionID = @QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionSubscribeToPublisher]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new subscriber to the publisher
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerConnectionSubscribeToPublisher] @PublisherAnswerId int, @SubscriberAnswerId int AS

SELECT PublisherAnswerId FROM vts_tbAnswerConnection WHERE PublisherAnswerId = @PublisherAnswerId AND SubscriberAnswerID = @SubscriberAnswerID

IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbAnswerConnection (PublisherAnswerId, SubscriberAnswerID) VALUES (@PublisherAnswerID, @SubscriberAnswerId)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerConnectionUnSubscribeFromPublisher]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Unsubscribes from the publisher
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerConnectionUnSubscribeFromPublisher] @PublisherAnswerId int, @SubscriberAnswerId int AS

DELETE FROM vts_tbAnswerConnection WHERE PublisherAnswerId = @PublisherAnswerId AND SubscriberAnswerID = @SubscriberAnswerID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete an answer
/// </summary>
/// <param name="@AnswerID">
/// Answer to delete
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerDelete] @AnswerID int as
DECLARE 
	@QuestionID int,
	@DisplayOrder int	
BEGIN TRANSACTION DeleteAnswer

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID = @AnswerID AND (LanguageMessageTypeID = 1 OR LanguageMessageTypeID = 2)

-- Delete associated Branching rules
DELETE FROM vts_tbBranchingRule WHERE AnswerID = @AnswerID

-- Delete associated skip logic rules
DELETE FROM vts_tbSkipLogicRule WHERE AnswerID = @AnswerID

-- Delete associated Message conditions
DELETE FROM vts_tbMessageCondition WHERE AnswerID = @AnswerID

-- Delete associated Filter  rules
DELETE FROM vts_tbFilterRule WHERE AnswerID = @AnswerID

-- Delete subscriber or publishers
DELETE FROM vts_tbAnswerConnection WHERE PublisherAnswerID = @AnswerID OR SubscriberAnswerID = @AnswerID

-- Retrieve the current display order
SELECT @QuestionID = QuestionID, @DisplayOrder  = DisplayOrder
FROM vts_tbAnswer 
WHERE AnswerID = @AnswerID

-- Deletes the answer
DELETE FROM vts_tbAnswer WHERE AnswerID = @AnswerID

-- Updates the answers display order
UPDATE vts_tbAnswer
SET DisplayOrder = DisplayOrder - 1 
WHERE 
	QuestionID = @QuestionID AND
	DisplayOrder >= @DisplayOrder
COMMIT TRANSACTION DeleteAnswer


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetAnswerTypeMode]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves the answer type mode
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerGetAnswerTypeMode]
		@AnswerId int
AS

SELECT 
	vts_tbAnswerType.TypeMode 
FROM 
	vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeId = vts_tbAnswerType.AnswerTypeID
WHERE 
	AnswerID = @AnswerID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all question's answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the question from which we want the answers
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerGetDetails] @AnswerID int, @LanguageCode nvarchar(50) AS
SELECT 
	AnswerID,
	vts_tbAnswer.AnswerTypeID,
	QuestionId,
	AnswerText = 
		CASE @LanguageCode
		WHEN null THEN
			AnswerText 
		WHEN '' THEN
			AnswerText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 1 AND
			LanguageCode = @LanguageCode), AnswerText)		
		END,
		AnswerAlias = 
		CASE @LanguageCode
		WHEN null THEN
			AnswerAlias
		WHEN '' THEN
			AnswerAlias
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 13 AND
			LanguageCode = @LanguageCode), AnswerAlias)		
		END,
	ImageURL, 
	(SELECT count(*) FROM vts_tbVoterAnswers INNER JOIN vts_tbVoter ON vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID WHERE  vts_tbVoter.Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) as VoteCount,
	RatePart,
	Selected,
	ScorePoint,
	DefaultText = 
		CASE @LanguageCode 
		WHEN null THEN
			DefaultText 
		WHEN '' THEN
			DefaultText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 2 AND
			LanguageCode = @LanguageCode), null)		
		END,
	FieldWidth,
	FieldHeight,
	FieldLength,
	TypeMode,	
	XMLDatasource,
	DataSource,
	JavascriptCode,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	TypeNameSpace,
	TypeAssembly,
	AnswerPipeAlias,
	Mandatory,
	RegExpression,
	RegExMessage,
	vts_tbAnswer.RegularExpressionId,
	AnswerIDText,
	SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep
		
FROM vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
LEFT JOIN vts_tbRegularExpression
	ON vts_tbAnswer.RegularExpressionId = vts_tbRegularExpression.RegularExpressionId
WHERE AnswerID=@AnswerID



/* vts_spSurveyGetForExport  */



GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetPublishersList]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all answer that can be subscribed to
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerGetPublishersList] @AnswerId int AS

DECLARE @PageNumber int,
	@QuestionId int,
	@SurveyId int

SELECT  @SurveyId = Q.SurveyId, @PageNumber = Q.PageNumber, @QuestionId = Q.QuestionId
FROM vts_tbAnswer A
INNER JOIN vts_tbQuestion Q
	ON A.QuestionID = Q.QuestionID
WHERE A.AnswerID=@AnswerID
 

SELECT 
	A.AnswerID,
	A.AnswerText
FROM vts_tbAnswer A
INNER JOIN vts_tbQuestion Q
	ON A.QuestionID = Q.QuestionID
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswerType.AnswerTypeID = A.AnswerTypeID
WHERE A.AnswerID<>@AnswerID AND 
	A.AnswerID NOT IN ( Select PublisherAnswerId FROM vts_tbAnswerConnection WHERE SubscriberAnswerId = @AnswerId) AND
	Q.PageNumber = @PageNumber AND
	@QuestionId = Q.QuestionId AND 
	(Q.SurveyID = @SurveyId OR @SurveyID is null) AND
	vts_tbAnswerType.TypeMode & 16 > 1


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetScoreTotal]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all question's answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the question from which we want the answers
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerGetScoreTotal] @AnswerIDCSV varchar(7998) AS

SET @AnswerIDCSV = ',' +@AnswerIDCSV+ ','

SELECT sum(ScorePoint)
FROM vts_tbAnswer
WHERE @AnswerIDCSV LIKE '%,' +convert(varchar(12), AnswerID)+ ',%'


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerGetSubscriptionList]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all answers to which the answer has subscribed to receive answer events
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerGetSubscriptionList] @AnswerId int AS

SELECT 
	AnswerID,
	AnswerText
FROM vts_tbAnswer 
WHERE AnswerID in 
(SELECT 
	PublisherAnswerId as AnswerID
FROM vts_tbAnswerConnection
WHERE SubscriberAnswerID=@AnswerID)


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new column answer to a matrix
/// </summary>
/// <param name="@QuestionID">
/// The id of the parent matrix question to which you will add the column
/// </param>
/// <param name="@AnswerText">
/// The answer text
/// </param>
/// <param name="@ImageURL">
/// Image that will be associated with the answer
/// </param>
/// <param name="@AnswerTypeID">
/// The type of answer we want to create
/// </param>
/// <param name="@AnswerID">
/// The created answer's id
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerMatrixAddNew] 
			@ParentQuestionID int, 
			@AnswerText nvarchar(4000), 
			@ImageURL nvarchar(1000), 
			@AnswerTypeID int,
			@AnswerID int OUTPUT
AS
BEGIN TRAN InsertMatrixColumn

DECLARE @DisplayOrder int

select @DisplayOrder = ISNULL ( max(DisplayOrder) + 1 , 1)  FROM vts_tbAnswer WHERE questionID = @ParentQuestionID

INSERT INTO vts_tbAnswer 
	( QuestionId, 
	AnswerText,
	ImageURL,
	DisplayOrder,
	AnswerTypeID)
VALUES
	 (@ParentQuestionId, 
	@AnswerText, 
	@ImageURL,
	@DisplayOrder,
	@AnswerTypeID)
set @AnswerID = scope_identity()
exec vts_spAnswerMatrixChildAddNew 
			@ParentQuestionID, 
			@AnswerText, 
			@ImageURL,
			@DisplayOrder,
			@AnswerTypeID
COMMIT TRAN InsertMatrixColumn


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixChildAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Insert  the answers for all the child questions of the parentQuestionID
/// </summary>
/// <param name="@QuestionID">
/// The id of the parent matrix question to get the child question ids
/// </param>
/// <param name="@AnswerText">
/// The answer text
/// </param>
/// <param name="@ImageURL">
/// Image that will be associated with the answer
/// </param>
/// <param name="@AnswerTypeID">
/// The type of answer we want to create
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerMatrixChildAddNew] 
			@ParentQuestionID int, 
			@AnswerText nvarchar(4000), 
			@ImageURL nvarchar(1000),
			@DisplayOrder int, 
			@AnswerTypeID int 
AS
INSERT INTO vts_tbAnswer  
	(QuestionId, 
	AnswerText,
	ImageURL,
	AnswerTypeID,
	DisplayOrder)
SELECT      
	QuestionID, 
	@AnswerText, 
	@ImageURL,
	@AnswerTypeID,
	@DisplayOrder
FROM vts_tbQuestion WHERE ParentQuestionID = @ParentQuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)
	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
/// <summary>
/// Delete a columns of the given matrix
/// </summary>
/// <param name="@AnswerID">
/// Answer to delete from the matrix
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerMatrixDelete] 
				@AnswerID int
AS

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID  in 
	(SELECT AnswerID FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID,
	(SELECT AnswerText, QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AS tbParentAnswer
	WHERE 
		vts_tbAnswer.AnswerText = tbParentAnswer.AnswerText AND 
		(vts_tbQuestion.ParentQuestionID = tbParentAnswer.QuestionID 
		OR vts_tbQuestion.QuestionID = tbParentAnswer.QuestionID))  AND LanguageMessageTypeID = 1

DELETE FROM vts_tbAnswer 
WHERE AnswerID in 
	(SELECT AnswerID FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID,
	(SELECT AnswerText, QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AS tbParentAnswer
	WHERE 
		vts_tbAnswer.AnswerText = tbParentAnswer.AnswerText AND 
		(vts_tbQuestion.ParentQuestionID = tbParentAnswer.QuestionID 
		OR vts_tbQuestion.QuestionID = tbParentAnswer.QuestionID))


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMatrixUpdate]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the settings of a matrix column
/// </summary>
/// <param name="@AnswerID">
/// The answer to update
/// </param>
/// <param name="@AnswerText">
/// The answer text
/// </param>
/// <param name="@ImageURL">
/// Image that will be associated with the answer
/// </param>
/// <param name="@AnswerTypeID">
/// The type of answer we want to create
/// </param>
/// <param name="@RatePart">
/// Is this a rating parameter ?
/// </param>*/
CREATE PROCEDURE [dbo].[vts_spAnswerMatrixUpdate] 
			@AnswerID int, 
			@AnswerText nvarchar(4000), 
			@ImageURL nvarchar(1000), 
			@AnswerTypeID int,
			@RatePart bit,
			@Mandatory bit,
			@LanguageCode nvarchar(50)
AS
BEGIN TRAN UpdateChildAnswers

UPDATE vts_tbAnswer 
SET 	ImageURL = @ImageURL,
	AnswerTypeID = @AnswerTypeID,
	RatePart = @RatePart,
	Mandatory = @Mandatory
WHERE AnswerID in 
	(SELECT AnswerID FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID,
	(SELECT AnswerText, QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AS tbParentAnswer
	WHERE 
		vts_tbAnswer.AnswerText = tbParentAnswer.AnswerText AND 
		(vts_tbQuestion.ParentQuestionID = tbParentAnswer.QuestionID 
		OR vts_tbQuestion.QuestionID = tbParentAnswer.QuestionID))

-- Updates text
IF @LanguageCode is null OR @LanguageCode=''
BEGIN
	UPDATE vts_tbAnswer 
	SET 	AnswerText = @AnswerText
	WHERE AnswerID in 
		(SELECT AnswerID FROM vts_tbAnswer
		INNER JOIN vts_tbQuestion 
			ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID,
		(SELECT AnswerText, QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AS tbParentAnswer
		WHERE 
			vts_tbAnswer.AnswerText = tbParentAnswer.AnswerText AND 
			(vts_tbQuestion.ParentQuestionID = tbParentAnswer.QuestionID 
			OR vts_tbQuestion.QuestionID = tbParentAnswer.QuestionID))
END
ELSE
BEGIN
	DECLARE @ChildAnswerID int
	DECLARE GetChildAnswers CURSOR LOCAL READ_ONLY  FOR 
		SELECT AnswerID FROM vts_tbAnswer
		INNER JOIN vts_tbQuestion 
			ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID,
		(SELECT AnswerText, QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AS tbParentAnswer
		WHERE 
			vts_tbAnswer.AnswerText = tbParentAnswer.AnswerText AND 
			(vts_tbQuestion.ParentQuestionID = tbParentAnswer.QuestionID 
			OR vts_tbQuestion.QuestionID = tbParentAnswer.QuestionID)

	OPEN GetChildAnswers
	FETCH NEXT FROM GetChildAnswers INTO @ChildAnswerId
	WHILE @@FETCH_STATUS = 0
	BEGIN      
		-- Updates localized text
		exec vts_spMultiLanguageTextUpdate @ChildAnswerId, @LanguageCode, 1, @AnswerText
		FETCH NEXT FROM GetChildAnswers INTO @ChildAnswerId
	END 
	CLOSE GetChildAnswers
	DEALLOCATE GetChildAnswers
	

END
COMMIT TRAN UpdateChildAnswers


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMoveDown]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves an answer's positions down 
/// </summary>
/// <param name="@AnswerID">
/// ID of the answer to move one position down
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerMoveDown] @AnswerID int 
AS
DECLARE
	@OldDisplayOrder int,
	@NewDisplayOrder int,
	@QuestionID int
SELECT 
	@OldDisplayOrder = DisplayOrder,
	@QuestionID = QuestionID
FROM 
	vts_tbAnswer
WHERE
	AnswerID = @AnswerID
SELECT TOP 1  
	@NewDisplayOrder = DisplayOrder
FROM 
	vts_tbAnswer
WHERE
	QuestionID = @QuestionID AND
	DisplayOrder > @OldDisplayOrder
	ORDER BY DisplayOrder ASC
-- Is this already the last answer
IF @@ROWCOUNT <>0
BEGIN
	-- Move up previous answer
	UPDATE vts_tbAnswer
		set DisplayOrder = @OldDisplayOrder 
	WHERE 
		DisplayOrder = @NewDisplayOrder AND
		QuestionID = @QuestionID 
	-- Move down current answer
	UPDATE vts_tbAnswer set DisplayOrder = @NewDisplayOrder WHERE AnswerID = @AnswerID
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerMoveUp]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves an answer's positions up 
/// </summary>
/// <param name="@AnswerID">
/// ID of the answer to move one position up
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerMoveUp] @AnswerID int 
AS
DECLARE
	@OldDisplayOrder int,
	@NewDisplayOrder int,
	@QuestionID int
SELECT 
	@OldDisplayOrder = DisplayOrder,
	@QuestionID = QuestionID
FROM 
	vts_tbAnswer
WHERE
	AnswerID = @AnswerID
SELECT TOP 1  
	@NewDisplayOrder = DisplayOrder
FROM 
	vts_tbAnswer
WHERE
	QuestionID = @QuestionID AND
	DisplayOrder < @OldDisplayOrder
	ORDER BY DisplayOrder DESC
-- Is this the first answer
IF @@ROWCOUNT <>0
BEGIN
	-- Move down previous answer
	UPDATE vts_tbAnswer
		set DisplayOrder = @OldDisplayOrder 
	WHERE 
		DisplayOrder = @NewDisplayOrder AND
		QuestionID = @QuestionID 
	-- Move up current answer
	UPDATE vts_tbAnswer set DisplayOrder = @NewDisplayOrder WHERE AnswerID = @AnswerID
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes  the answer properties data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerPropertyDelete]
		@AnswerId int
AS

DELETE FROM 	vts_tbAnswerProperty WHERE AnswerID = @AnswerID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyRestore]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves the properties  data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerPropertyRestore]
		@AnswerId int
AS

SELECT 
	Properties 
FROM 
	vts_tbAnswerProperty
WHERE 
	AnswerID = @AnswerID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerPropertyStore]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Store the serialized answer properties
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerPropertyStore]
		@AnswerId int, 
		@Properties image 
AS

DELETE FROM vts_tbAnswerProperty where AnswerID = @AnswerID
INSERT INTO vts_tbAnswerProperty(AnswerId, Properties) VALUES (@AnswerID, @Properties)

select scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswersCloneByQuestionId]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)
	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spAnswersCloneByQuestionId] 
	@QuestionID int,
	@ClonedQuestionId int  
AS
BEGIN TRAN CloneAnswers
-- Clone the answer
INSERT INTO vts_tbAnswer  
	(QuestionID, 
	AnswerTypeID, 
	AnswerText,
	ImageURL,
	RatePart,
	DisplayOrder,
	Selected,
	DefaultText,
	ScorePoint,
	AnswerPipeAlias,
	RegularExpressionId,
	Mandatory,
	AnswerIDText,
	AnswerAlias,
	SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep)
SELECT      
	@ClonedQuestionID, 
	AnswerTypeID, 
	AnswerText, 
	ImageURL,
	RatePart,
	DisplayOrder,
	Selected,
	DefaultText,
	ScorePoint,
	AnswerPipeAlias,
	RegularExpressionId,
	Mandatory,
	AnswerIDText,
	AnswerAlias,
	SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep
FROM vts_tbAnswer WHERE QuestionID = @QuestionID

--- Clone any available answer multi language text or answer default value in different languages
INSERT INTO vts_tbMultiLanguageText
	(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
SELECT      
	LanguageItemID = 
	(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionId AND 
		DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = A.AnswerID)),
	LanguageCode, LanguageMessageTypeID, ItemText 
FROM vts_tbMultiLanguageText
INNER JOIN vts_tbAnswer A
	ON vts_tbMultiLanguageText.LanguageItemID = A.AnswerId
WHERE QuestionID = @QuestionID AND (LanguageMessageTypeID = 1 OR LanguageMessageTypeID = 2 OR LanguageMessageTypeID = 13)


INSERT INTO vts_tbAnswerProperty
	(AnswerId,
	Properties)
SELECT      
	AnswerId = 
	(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionId AND 
		DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = A.AnswerID)),
	Properties 
FROM vts_tbAnswerProperty
INNER JOIN vts_tbAnswer A
	ON vts_tbAnswerProperty.AnswerID = A.AnswerId
WHERE QuestionID = @QuestionID

exec vts_spAnswerConnectionCloneByQuestionId @QuestionID, @ClonedQuestionId

COMMIT TRAN CloneAnswers




GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new answer type
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeAddNew]
			@UserID int, 
			@Description varchar(200), 
			@XMLDataSource varchar(200) = null,
			@DataSource nvarchar(4000) = null, 
			@TypeMode int = 0,
			@FieldWidth int = 0,
			@FieldHeight int = 0,
			@FieldLength int = 0,
			@PublicFieldResults bit = 0,
			@JavascriptFunctionName varchar(1000) = null, 
			@JavascriptErrorMessage varchar(1000) = null, 
			@JavascriptCode varchar(8000) = null, 			
			@TypeAssembly varchar(200), 
			@TypeNameSpace varchar(200), 
			@AnswerTypeID int OUTPUT
AS

SELECT 
	@AnswerTypeID = AnswerTypeID
FROM vts_tbAnswerType
WHERE
	Description = @Description AND
	(XMLDataSource = @XMLDataSource OR XMLDataSource is null) AND
	(DataSource = @DataSource OR DataSource is null) AND
	TypeMode = @TypeMode AND
	(FieldWidth = @FieldWidth OR FieldWidth is null) AND
	(FieldHeight = @FieldHeight OR FieldHeight is null) AND
	(FieldLength = @FieldLength OR FieldLength is null)AND
	(JavascriptFunctionName = @JavascriptFunctionName OR JavascriptFunctionName is null) AND
	(JavascriptErrorMessage = @JavascriptErrorMessage OR JavascriptErrorMessage is null) AND
	(JavascriptCode = @JavascriptCode OR JavascriptCode is null) AND
	TypeAssembly = @TypeAssembly AND
	TypeNameSpace = @TypeNameSpace


if @@rowcount = 0
BEGIN
	INSERT INTO vts_tbAnswerType
		(Description, 
		XMLDataSource,
		DataSource,
		TypeMode,
		FieldWidth,
		FieldHeight,
		FieldLength,
		PublicFieldResults,
		JavascriptFunctionName,
		JavascriptErrorMessage,
		JavascriptCode,
		TypeAssembly,
		TypeNameSpace)
	VALUES
		 (@Description, 
		@XMLDataSource,
		@DataSource,
		@TypeMode,
		@FieldWidth,
		@FieldHeight,
		@FieldLength,
		@PublicFieldResults,
		@JavascriptFunctionName,
		@JavascriptErrorMessage,
		@JavascriptCode,
		@TypeAssembly,
		@TypeNameSpace)
	set @AnswerTypeID = scope_identity()
	IF @UserId > 0
	BEGIN
		exec vts_spUserAnswerTypeAssignUser @AnswerTypeID, @UserId
	END
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the given answer type id
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeDelete] @AnswerTypeID int AS
DELETE FROM vts_tbAnswerType WHERE AnswerTypeID = @AnswerTypeID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetAll]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetAll] AS
SELECT 
	AnswerTypeID,
	Description,
	XMLDataSource,
	DataSource,
	TypeMode,
	FieldWidth,
	FieldHeight,
	FieldLength,
	PublicFieldResults,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	JavascriptCode,
	BuiltIn
 FROM vts_tbAnswerType ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves all the infos of the given answer type id
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetDetails] @AnswerTypeID int AS
SELECT 
	AnswerTypeID,
	Description, 
	XMLDataSource,
	DataSource,
	TypeMode,
	FieldWidth,
	FieldHeight,
	FieldLength,
	PublicFieldResults,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	JavascriptCode,
	BuiltIn,
	TypeNameSpace,
	TypeAssembly
 FROM vts_tbAnswerType 
 WHERE AnswerTypeID = @AnswerTypeID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetEditableList]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetEditableList] AS
SELECT 
	AnswerTypeID,
	Description
 FROM vts_tbAnswerType
WHERE TypeMode & 4 = 0 AND TypeMode & 256 = 0
 ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetEditableListForUser]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetEditableListForUser] @UserId int AS
SELECT 
	vts_tbAnswerType.AnswerTypeID,
	vts_tbAnswerType.Description
 FROM vts_tbAnswerType 
LEFT JOIN vts_tbUserAnswerType
	ON vts_tbUserAnswerType.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE TypeMode & 4 = 0 AND TypeMode & 256 = 0 AND (vts_tbUserAnswerType.UserID = @UserID)
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetList]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetList] AS
SELECT 
	AnswerTypeID,
	Description
 FROM vts_tbAnswerType ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeGetListForUser]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeGetListForUser] @UserId int, @SurveyId int AS
SELECT 
	distinct vts_tbAnswerType.AnswerTypeID,
	vts_tbAnswerType.Description
 FROM vts_tbAnswerType 
LEFT JOIN vts_tbUserAnswerType
	ON vts_tbUserAnswerType.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE vts_tbUserAnswerType.UserID = @UserID OR 
	vts_tbAnswerType.BuiltIn<>0 OR 
	vts_tbAnswerType.AnswerTypeID in 
		(SELECT AnswerTypeId 
		FROM vts_tbAnswer 
		INNER JOIN vts_tbQuestion 
			ON vts_tbAnswer.QuestionId = vts_tbQuestion.QuestionId 
		WHERE SurveyId = @SurveyId)
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeIsInUse]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the answer type is in use
/// by an answer
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeIsInUse] @AnswerTypeID int AS
SELECT TOP 1 AnswerID FROM vts_tbAnswer WHERE AnswerTypeID = @AnswerTypeID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeSetBuiltIn]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Set  answer type to be built in
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeSetBuiltIn] @AnswerTypeID int AS

BEGIN TRAN SetBuiltIn

exec vts_spUserAnswerTypeUnAssignAllUser @AnswerTypeID

UPDATE vts_tbAnswerType SET BuiltIn = 1 WHERE AnswerTypeID =@AnswerTypeID

COMMIT TRAN SetBuiltIn


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerTypeUpdate]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the answer type data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerTypeUpdate]
			@AnswerTypeID int, 
			@Description varchar(200), 
			@XMLDataSource varchar(200),
			@DataSource nvarchar(4000),
			@TypeMode int = 0,
			@FieldWidth int = 0,
			@FieldHeight int = 0,
			@FieldLength int = 0,
			@PublicFieldResults bit = 0,
			@JavascriptFunctionName varchar(1000), 
			@JavascriptErrorMessage varchar(1000), 
			@JavascriptCode varchar(8000),
			@TypeAssembly varchar(200), 
			@TypeNameSpace varchar(200)			
AS
UPDATE vts_tbAnswerType SET
	Description = @Description, 
	XMLDataSource = @XMLDataSource,
	DataSource = @DataSource,
	TypeMode = @TypeMode,
	FieldWidth = @FieldWidth,
	FieldHeight = @FieldHeight,
	FieldLength = @FieldLength,
	PublicFieldResults = @PublicFieldResults,
	JavascriptFunctionName = @JavascriptFunctionName,
	JavascriptErrorMessage = @JavascriptErrorMessage,
	JavascriptCode = @JavascriptCode,
	TypeAssembly = @TypeAssembly, 
	TypeNameSpace = @TypeNameSpace
WHERE AnswerTypeID = @AnswerTypeID


GO
/****** Object:  StoredProcedure [dbo].[vts_spAnswerUpdate]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the settings of an answer
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spAnswerUpdate] 
			@AnswerID int,
			@AnswerText nvarchar(4000), 
			@DefaultText nvarchar(4000), 
			@ImageURL nvarchar(1000), 
			@AnswerPipeAlias nvarchar(255),
			@AnswerTypeID int,
			@Selected bit,
			@RatePart bit,
			@ScorePoint int,
			@RegularExpressionId int = null,
			@Mandatory bit,
			@LanguageCode nvarchar(50) = null,
			@AnswerIDText nvarchar(255),
			@AnswerAlias nvarchar(255),		
			@SliderRange nvarchar(3),
			@SliderValue int,
			@SliderMin int,
			@SliderMax int,
			@SliderAnimate bit,
			@SliderStep int					
AS
BEGIN TRAN UpdateAnswer

if @Selected <> 0
BEGIN
-- Clear current selected status if we only one selection is possible for the question
UPDATE vts_tbAnswer SET selected = 0 
WHERE AnswerID IN (
	SELECT AnswerID FROM vts_tbAnswer 
	INNER JOIN vts_tbQuestion
		ON vts_tbAnswer.QuestionID = vts_tbQuestion.QuestionID
	INNER JOIN vts_tbQuestionSelectionMode
		ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
	WHERE 	
		vts_tbAnswer.QuestionID = (SELECT QuestionID FROM vts_tbAnswer WHERE AnswerID = @AnswerID) AND 
		vts_tbQuestionSelectionMode.TypeMode & 16 = 0)
END 
UPDATE vts_tbAnswer
SET	ImageURL = @ImageURL,
	AnswerTypeID = @AnswerTypeID,
	RatePart = @RatePart,
	Selected = @Selected,
	ScorePoint = @ScorePoint,
	AnswerPipeAlias = @AnswerPipeAlias,
	RegularExpressionId = @RegularExpressionId,
	Mandatory = @Mandatory,
	AnswerIDText = @AnswerIDText,
	SliderRange = @SliderRange,
	SliderValue = @SliderValue,
	SliderMin = @SliderMin,
	SliderMax = @SliderMax,
	SliderAnimate = @SliderAnimate,
	SliderStep = @SliderStep
	
WHERE
	AnswerID = @AnswerID

-- Updates text
IF @LanguageCode is null OR @LanguageCode=''
BEGIN
	UPDATE vts_tbAnswer
	SET 	AnswerText = @AnswerText,
		DefaultText = @DefaultText,
	    AnswerAlias = @AnswerAlias
	WHERE AnswerID = @AnswerID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @AnswerID, @LanguageCode, 1, @AnswerText
	exec vts_spMultiLanguageTextUpdate @AnswerID, @LanguageCode, 2, @DefaultText
	exec vts_spMultiLanguageTextUpdate @AnswerID, @LanguageCode, 13, @AnswerAlias
END

COMMIT TRAN UpdateAnswer




GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spEmailAddNew] 
				@Email varchar(150),
				@EmailID int output
AS
SELECT @EmailID = EmailID FROM vts_tbEmail WHERE Email = @Email
if @EmailID is null
BEGIN
	INSERT INTO vts_tbEmail (Email) VALUES (@Email)
	set @EmailId = Scope_identity()
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailNotificationSettingsAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spEmailNotificationSettingsAddNew]
					@SurveyID int,
					@EmailFrom varchar(255),
					@EmailTo varchar(255),
					@EmailSubject nvarchar(255)
 AS

UPDATE vts_tbEmailNotificationSettings SET EmailFrom=@EmailFrom, EmailTo=@EmailTo, EmailSubject = @EmailSubject WHERE SurveyID = @SurveyID

if @@rowcount = 0
BEGIN
	INSERT INTO vts_tbEmailNotificationSettings (SurveyID, EmailFrom, EmailTo, EmailSubject) 
	VALUES (@SurveyID, @EmailFRom, @EmailTo, @EmailSubject)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spEmailNotificationSettingsDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spEmailNotificationSettingsDelete]
					@SurveyID int
 AS


DELETE FROM vts_tbEmailNotificationSettings WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileAddNew]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new file in its file group
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileAddNew] 
		@GroupGuid varchar(40), 
		@FileName nvarchar(1024), 
		@FileSize int, 
		@FileType nvarchar(1024), 
		@FileData image,
		@UploadedFileTimeOut int = 24,
		@SessionUploadedFileTimeOut int = 336

AS

-- clean up the table of the expired files
exec vts_spFileDeleteExpired @UploadedFileTimeOut, @SessionUploadedFileTimeOut

INSERT INTO vts_tbFile(GroupGuid, FileName, FileSize, FileType, FileData) VALUES (@GroupGuid, @FileName, @FileSize, @FileType, @FileData)

select scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileDelete]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete all file data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileDelete]
		@FileId int,
		@GroupGuid varchar(40)
AS

DELETE
	vts_tbFile
WHERE 
	FileId=@FileId AND GroupGuid = @GroupGuid


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileDeleteExpired]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete all file data that have expired 
/// after the hours specified in the timeout
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileDeleteExpired]
		@UploadedFileTimeOut int,
		@SessionUploadedFileTimeOut int
AS

DELETE  FROM vts_tbFile WHERE FileId IN (
	SELECT f.FileId FROM vts_tbFile f WHERE 
	GetDate()>DateAdd(hh, @UploadedFileTimeOut,f.SaveDate) AND 
	NOT EXISTS (SELECT VoterID FROM vts_tbVoterAnswers WHERE AnswerText like f.GroupGuid))

DELETE  FROM vts_tbFile WHERE FileId IN (
	SELECT f.FileId FROM vts_tbFile f WHERE 
	GetDate()>DateAdd(hh, @SessionUploadedFileTimeOut,f.SaveDate) AND 
	EXISTS 
	(SELECT vts_tbVoterAnswers.VoterID 
	 FROM vts_tbVoterAnswers INNER JOIN vts_tbVoter ON vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
	WHERE AnswerText like f.GroupGuid AND vts_tbVoter.Validated=0))


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetData]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves the image file data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileGetData]
		@FileId int,
		@GroupGuid varchar(40)
AS

SELECT 
	FileData 
FROM 
	vts_tbFile 
WHERE 
	FileId=@FileId AND GroupGuid = @GroupGuid


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetDetails]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all details about the requested file
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileGetDetails]
		@FileId int,
		@GroupGuid varchar(40)
AS

SELECT FileId, GroupGuid, FileName, FileSize, SaveDate, -1 as VoterID FROM vts_tbFile WHERE FileId=@FileId AND GroupGuid = @GroupGuid


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetGroupCount]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves the number of files in a group
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileGetGroupCount]
		@GroupGuid varchar(40)
AS

SELECT count(*) as FileCount
FROM  vts_tbFile 
WHERE GroupGuid = @GroupGuid


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileGetListForGuid]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all files of the given group using the Guid
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileGetListForGuid]
		@GroupGuid varchar(40)
AS

SELECT FileId, GroupGuid, FileName, FileSize, SaveDate, -1 as VoterId FROM vts_tbFile WHERE GroupGuid = @GroupGuid


GO
/****** Object:  StoredProcedure [dbo].[vts_spFileValidatedGetAll]    Script Date: 20-12-2013 13:14:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Get validated files
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFileValidatedGetAll]
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@TotalRecords int OUTPUT
AS
-- Turn off count return.
Set NoCount On
-- Declare variables.
DECLARE @FirstRec int
DECLARE @LastRec int
-- Initialize variables.
SET @FirstRec = (@CurrentPage - 1) * @PageSize
SET @LastRec = (@CurrentPage * @PageSize + 1)

-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
CREATE TABLE #TempTable (RowId int IDENTITY PRIMARY KEY, FileId int NOT NULL, VoterId int, GroupGuid varchar(40), FileName nvarchar(1024), FileType varchar(1024), FileSize int, SaveDate DateTime)

--Fill the temp table with the reminders
INSERT INTO #TempTable (FileId, VoterId, GroupGuid, FileName, FileType, FileSize, SaveDate)
	SELECT FileId, vts_tbVoter.VoterId, GroupGuid, FileName, FileType, FileSize, SaveDate
	FROM vts_tbFile
	INNER JOIN vts_tbVoterAnswers ON 
		AnswerText like GroupGuid
	INNER JOIN vts_tbVoter ON
		vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
	WHERE vts_tbVoter.SurveyID = @SurveyID AND vts_tbVoter.Validated<>0
	ORDER BY SaveDate DESC

SELECT @TotalRecords = count(*) FROM vts_tbFile
INNER JOIN vts_tbVoterAnswers ON 
	AnswerText like GroupGuid
INNER JOIN vts_tbVoter ON
	vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
WHERE vts_tbVoter.SurveyID = @SurveyID AND vts_tbVoter.Validated<>0

SELECT FileId, VoterId, GroupGuid, FileName, FileType, FileSize, SaveDate
FROM #TempTable
WHERE 
	RowId > @FirstRec AND
	RowId < @LastRec
DROP TABLE #TempTable


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// insert a new  filter
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterAddNew]
			@SurveyID int,
			@Description varchar(200), 
			@LogicalOperatorTypeID smallint = 0,
			@FilterID int output 
AS
INSERT INTO vts_tbFilter(SurveyID, Description, LogicalOperatorTypeID) VALUES (@SurveyID, @Description, @LogicalOperatorTypeID)
set  @FilterID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the filter 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterDelete] 
			@FilterID int
AS
DELETE FROM vts_tbFilter WHERE FilterID = @FilterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves all the infos of the given filter
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterGetDetails] @FilterID int AS
SELECT 
	FilterID,
	Description, 
	LogicalOperatorTypeID
 FROM vts_tbFilter 
 WHERE FilterID = @FilterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterGetForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spFilterGetForSurvey] @SurveyId int AS
SELECT 
	FilterID,
	Description, 
	LogicalOperatorTypeID
FROM vts_tbFilter 
WHERE SurveyId = @SurveyId
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new rule to a filter
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterRuleAddNew] 
			@FilterID int,
			@QuestionID int,
			@AnswerID int,
			@TextFilter nvarchar(4000), 
			@FilterRuleID int OUTPUT
AS
INSERT INTO vts_tbFilterRule
	(FilterID,
	QuestionID,
	AnswerID,
	TextFilter)
VALUES
	(@FilterID,
	@QuestionID,
	@AnswerID,
	@TextFilter)
set @FilterRuleID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the filter rule
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterRuleDelete] 
			@FilterRuleID int
AS
DELETE FROM vts_tbFilterRule WHERE FilterRuleID = @FilterRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterRuleGetForFilter]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spFilterRuleGetForFilter] @FilterID int AS
SELECT 
	FilterRuleID,
	FilterID,
	vts_tbFilterRule.QuestionID,
	vts_tbFilterRule.AnswerID,
	TextFilter,
	AnswerText,
	QuestionText
 FROM vts_tbFilterRule 
INNER JOIN vts_tbQuestion Q
	ON Q.QuestionID = vts_tbFilterRule.QuestionID
LEFT JOIN vts_tbAnswer A
	ON A.AnswerID = vts_tbFilterRule.AnswerID
WHERE FilterID = @FilterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the filter data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spFilterUpdate]
			@FilterID int, 
			@Description varchar(200), 
			@LogicalOperatorTypeID smallint = 0
AS
UPDATE vts_tbFilter SET
	Description = @Description, 
	LogicalOperatorTypeID = @LogicalOperatorTypeID
WHERE FilterID = @FilterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spFolderAddNew]	
	@ParentFolderId int,
	@FolderName varchar(200)
AS
BEGIN
if exists(
select 1 from vts_tbFolders where ParentFolderId=@ParentFolderId and FolderName=@FolderName)
begin
   raiserror('DUPLICATEFOLDER',16,4);
return;
end;
INSERT INTO vts_tbFolders(FolderName, ParentFolderId) VALUES (@FolderName, @ParentFolderId)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spFolderDelete]	
	@FolderId int
AS
BEGIN
declare @folders as table(fid int,pfid int);
;with fCTE1 (fid, pfid) AS
(
	SELECT folderId, parentfolderId FROM vts_tbfolders 
		where @FolderId = FolderId AND ParentFolderId IS NOT NULL
	UNION ALL
	SELECT f.folderId, f.parentfolderId FROM vts_tbfolders f 
	inner join fCTE1 fc ON f.ParentFolderId = fc.fid	
)
 
insert into @folders select * from fCTE1;

declare c1 cursor for select sv.surveyId
from [vts_tbSurvey] as sv
INNER JOIN @folders AS fc ON fc.fid = sv.FolderId;
declare @surveyId as int;
open c1;
fetch c1 into @surveyId;
while @@FETCH_STATUS =0 
begin 
 exec vts_spSurveyDeleteByID @surveyId
 fetch c1 into @surveyId;
end;

close c1;
deallocate c1;
;with fCTE (fid, pfid) AS
(
	SELECT folderid, parentfolderid FROM vts_tbfolders 
		where @FolderId = FolderId AND ParentFolderId IS NOT NULL
	UNION ALL
	SELECT f.folderId, f.parentfolderId FROM vts_tbfolders f 
	INNER JOIN fCTE fc ON f.ParentFolderId = fc.fid
)--- delete passed folder
Delete fd from [vts_tbFolders] AS fd
INNER JOIN fCTE AS fc ON fc.fid = fd.FolderId
where fd.ParentFolderId IS NOT NULL

END


GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderGetByFolderId]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spFolderGetByFolderId] 	
	@FolderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CONVERT(varchar, fs.FolderId) as ItemId, fs.FolderName as NodeName, CONVERT(varchar, fs.ParentFolderId) as ParentFolderId
	FROM vts_tbFolders as fs
	WHERE FolderId = @FolderId
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderMove]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spFolderMove]
	@ParentFolderId int,
	@FolderId int
AS
BEGIN
	SET NOCOUNT ON;
declare @foldername varchar(300);
select @foldername =foldername from  vts_tbFolders where FolderId=@FolderId;
if exists(
select 1 from vts_tbFolders where ParentFolderId=@ParentFolderId and FolderName=@FolderName)
begin
   raiserror('DUPLICATEFOLDER',16,4);
return;
end;
    Update vts_tbFolders
	set ParentFolderId = @ParentFolderId	
	where FolderId = @FolderId and ParentFolderId IS NOT NULL
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spFolderUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spFolderUpdate]	
	@FolderId int,
	@FolderName varchar(200),
	@ParentFolderId int
AS
BEGIN
if exists(
select 1 from vts_tbFolders where ParentFolderId=@ParentFolderId and FolderName=@FolderName and folderId!=@FolderId)
begin
   raiserror('DUPLICATEFOLDER',16,4);
return;
end;
Update vts_tbFolders
set FolderName = @FolderName,
ParentFolderId = @ParentFolderId
where FolderId = @FolderId

END


GO
/****** Object:  StoredProcedure [dbo].[vts_spGetQuestionResults]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spGetQuestionResults] @QuestionID int AS


GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new log
/// </summary>
*/

CREATE PROCEDURE 	[dbo].[vts_spInvitationLogAddNew]
			@SurveyID int,
			@Email nvarchar(155),
			@ExceptionMessage nvarchar(1024),
			@ExceptionType nvarchar(255),
			@ErrorDate datetime,
			@EmailID int OUTPUT,
			@InvitationLogID int OUTPUT
AS

SELECT @EmailID = EmailId FROM vts_tbEmail WHERE Email = @Email

if @@rowcount>0 
BEGIN
INSERT INTO vts_tbInvitationLog
	(SurveyID,
	EmailID,
	ExceptionMessage,
	ExceptionType,
	ErrorDate)
VALUES
	 (@SurveyID,
	@EmailID,
	@ExceptionMessage,
	@ExceptionType,
	@ErrorDate)

set @InvitationLogID = SCOPE_Identity()
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Deletes invitation log
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spInvitationLogDelete]
				@InvitationLogID int
AS

DELETE FROM vts_tbInvitationLog WHERE InvitationLogID = @InvitationLogID


GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationLogGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Get all logs
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spInvitationLogGetAll]
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@TotalRecords int OUTPUT
AS
-- Turn off count return.
Set NoCount On
-- Declare variables.
DECLARE @FirstRec int
DECLARE @LastRec int
-- Initialize variables.
SET @FirstRec = (@CurrentPage - 1) * @PageSize
SET @LastRec = (@CurrentPage * @PageSize + 1)

-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
CREATE TABLE #TempTable (RowId int IDENTITY PRIMARY KEY, InvitationLogId int NOT NULL, SurveyId int, EmailId int, ExceptionMessage varchar(1024), ExceptionType nvarchar(255), Email varchar(155), ErrorDate DateTime)

--Fill the temp table with the reminders
INSERT INTO #TempTable (InvitationLogId, SurveyId, EmailId, ExceptionMessage, ExceptionType, Email, ErrorDate)
	SELECT InvitationLogId, SurveyId, vts_tbInvitationLog.EmailId, ExceptionMessage, ExceptionType, Email, ErrorDate
	FROM vts_tbInvitationLog
	INNER JOIN vts_tbEmail ON 
		vts_tbInvitationLog.EmailId = vts_tbEmail.EmailID
	WHERE vts_tbInvitationLog.SurveyID = @SurveyID
	ORDER BY ErrorDate DESC

SELECT @TotalRecords = count(*) FROM vts_tbInvitationLog
WHERE SurveyID = @SurveyID

SELECT InvitationLogId, SurveyId, EmailId, ExceptionMessage, ExceptionType, Email, ErrorDate
FROM #TempTable
WHERE 
	RowId > @FirstRec AND
	RowId < @LastRec
DROP TABLE #TempTable


GO
/****** Object:  StoredProcedure [dbo].[vts_spInvitationUIDIsValid]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given UId is valid and returns its survey id
/// </summary>
/// <param name="@UID">
/// UId to check
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spInvitationUIDIsValid] @UID varchar(40)
AS
SELECT SurveyID
FROM vts_tbInvitationQueue 
WHERE UID = @UID


GO
/****** Object:  StoredProcedure [dbo].[vts_spIPRangeGetForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the questions until next page break
/// </summary>
/// <param name="@LibraryID">
/// ID of the library  to retrieve questions from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spIPRangeGetForSurvey]
			@SurveyId int
AS
	SELECT * from vts_tbSurveyIPrange
	WHERE SurveyId=@SurveyId


GO
/****** Object:  StoredProcedure [dbo].[vts_spLayoutModeGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spLayoutModeGetAll] AS
SELECT * FROM vts_tbLayoutMode


GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spLibraryAddNew] 
			@LibraryName nvarchar(255),
			@LibraryID int OUTPUT,
			@Description ntext,
			@DefaultlanguageCode nvarchar(50)

AS

INSERT INTO vts_tbLibrary (LibraryName, Description,DefaultlanguageCode)
 VALUES (@LibraryName, @Description,@DefaultLanguageCode)

set @LibraryID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spLibraryDelete]
			@LibraryID int

AS

DELETE vts_tbLibrary WHERE LibraryID = @LibraryID


GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spLibraryGetAll] AS

SELECT
	l.LibraryId,
	l.LibraryName,
	l.Description,
	l.DefaultLanguageCode,
	(select count(q.QuestionId) from vts_tbQuestion q where q.LibraryID=l.LibraryId) as QuestionCnt
 FROM vts_tbLibrary l ORDER BY LibraryName


GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spLibraryGetDetails] @LibraryId int AS

SELECT
	lib.LibraryId,
	lib.LibraryName,
	lib.Description,
	lib.defaultLanguageCode,
	(select count(q.QuestionId) from vts_tbQuestion q where q.LibraryID=lib.LibraryId) as QuestionCnt
 FROM vts_tbLibrary lib WHERE lib.LibraryID = @LibraryID


GO
/****** Object:  StoredProcedure [dbo].[vts_spLibraryUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spLibraryUpdate]
			@LibraryName nvarchar(255),
			@LibraryID int,
			@Description ntext,
		    @DefaultlanguageCode nvarchar(50)

AS

UPDATE vts_tbLibrary SET LibraryName=@LibraryName, Description=@Description,
DefaultLanguageCode=@DefaultlanguageCode WHERE LibraryID = @LibraryID


GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Returns all languages
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spMultiLanguageGetAll] 
AS

SELECT * FROM vts_tbMultiLanguage ORDER BY LanguageDescription


GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextAdd]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves an answer's positions up 
/// </summary>
/// <param name="@AnswerID">
/// ID of the answer to move one position up
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spMultiLanguageTextAdd] 
@LanguageItemId int,
@LanguageCode varchar(10),
@LanguageMessageTypeId int,
@ItemText varchar(max)
AS
INSERT INTO [vts_tbMultiLanguageText](LanguageItemId ,LanguageCode,LanguageMessageTypeId,ItemText)
VALUES (@LanguageItemId ,@LanguageCode,@LanguageMessageTypeId,@ItemText)

GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextDeleteForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spMultiLanguageTextDeleteForSurvey]
			@SurveyID int
AS

-- Delete multi language texts for answer items
DELETE FROM vts_tbMultiLanguageText 
WHERE LanguageItemID in 
		(select answerID FROM vts_tbAnswer INNER JOIN vts_tbQuestion ON vts_tbAnswer.QuestionID = vts_tbQuestion.QuestionID WHERE vts_tbQuestion.SurveyID = @SurveyID)  AND 
	(LanguageMessageTypeID = 1 OR LanguageMessageTypeID = 2)

-- Delete multi languages texts for survey items
DELETE FROM vts_tbMultiLanguageText
 WHERE LanguageItemID = @SurveyID AND (LanguageMessageTypeID = 4 OR LanguageMessageTypeID = 5)

-- Delete multi languages texts for question items
DELETE FROM vts_tbMultiLanguageText
 WHERE LanguageItemID in  (select QuestionID FROM vts_tbQuestion WHERE SurveyID = @SurveyID) AND 
	(LanguageMessageTypeID = 3 OR LanguageMessageTypeID = 6 OR LanguageMessageTypeID = 7 OR LanguageMessageTypeID = 8 OR LanguageMessageTypeID = 9 )


GO
/****** Object:  StoredProcedure [dbo].[vts_spMultiLanguageTextUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spMultiLanguageTextUpdate] 
			@LanguageItemId int,
			@LanguageCode nvarchar(50),
			@LanguageMessageTypeID int,
			@ItemText nvarchar(4000)

AS

-- Updates localized text
UPDATE vts_tbMultiLanguageText
SET 	ItemText = @ItemText
WHERE 
	LanguageItemID = @LanguageItemId AND
	LanguageCode = @LanguageCode AND
	LanguageMessageTypeID = @LanguageMessageTypeID
	
-- If localized text doesnt exist, create it
IF @@rowcount = 0 AND @ItemText is not null
BEGIN
	INSERT INTO vts_tbMultiLanguageText (LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
	VALUES (@LanguageItemId, @LanguageCode, @LanguageMessageTypeID, @ItemText)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageAddForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spMutliLanguageAddForSurvey] 
		 @SurveyId int,
         @LanguageCode nvarchar(50), 
		 @DefaultLanguage bit,
		 @Entity VARCHAR(20)='Survey'		 
AS
IF (@Entity='Survey') 
BEGIN
UPDATE vts_tbSurveyLanguage SET
	SurveyId = @SurveyID,
	LanguageCode = @LanguageCode,
	DefaultLanguage = @DefaultLanguage
WHERE 
	SurveyId = @SurveyId AND 
	LanguageCode = @LanguageCode ;
	IF @@rowcount = 0
	INSERT INTO vts_tbSurveyLanguage(SurveyId, LanguageCode, DefaultLanguage)
	VALUES (@SurveyID, @LanguageCode, @DefaultLanguage)
END
ELSE
BEGIN
if not Exists(select 1 from vts_tbMultiLanguage where LanguageCode=@LanguageCode)
BEGIN
   insert into vts_tbMultiLanguage(LanguageCode,LanguageDescription)
   values (@LanguageCode,@LanguageCode);
END;
UPDATE vts_tbLibraryLanguage SET
	LibraryId = @SurveyID,
	LanguageCode = @LanguageCode,
	DefaultLanguage = @DefaultLanguage
WHERE 
	LibraryId = @SurveyId AND 
	LanguageCode = @LanguageCode ;
	IF @@rowcount = 0
	INSERT INTO vts_tbLibraryLanguage(LibraryId, LanguageCode, DefaultLanguage)
	VALUES (@SurveyID, @LanguageCode, @DefaultLanguage)
END



GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageCheckForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spMutliLanguageCheckForSurvey] 
@SurveyId int, @LanguageCode nvarchar(50) AS

SELECT LanguageCode FROM vts_tbSurveyLanguage WHERE LanguageCode = @LanguageCode AND SurveyID = @SurveyID

IF @@rowcount = 0
	SELECT
		vts_tbMultiLanguage.LanguageCode
	FROM vts_tbMultiLanguage
	INNER JOIN vts_tbSurveyLanguage
		ON vts_tbMultiLanguage.LanguageCode = vts_tbSurveyLanguage.LanguageCode
	WHERE SurveyId = @SurveyId AND DefaultLanguage<>0


GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageDeleteForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spMutliLanguageDeleteForSurvey] 
@SurveyId int, @LanguageCode nvarchar(50),@Entity varchar(20)='Survey' AS

IF @Entity = 'Survey'
	DELETE FROM vts_tbSurveyLanguage 
	WHERE 
		SurveyID = @SurveyID AND 
		LanguageCode = @LanguageCode
ELSE IF @Entity = 'Library'
	DELETE FROM vts_tbLibraryLanguage 
	WHERE 
		LibraryID = @SurveyID AND
		LanguageCode = @LanguageCode


GO
/****** Object:  StoredProcedure [dbo].[vts_spMutliLanguageGetEnabledForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spMutliLanguageGetEnabledForSurvey]
		 @SurveyId as int = -1,
		 @Entity VARCHAR(20) = 'Survey'
AS
SELECT 
	vts_tbMultiLanguage.LanguageCode,
	LanguageDescription, 
	DefaultLanguage
FROM vts_tbMultiLanguage
INNER JOIN vts_tbSurveyLanguage
	ON vts_tbMultiLanguage.LanguageCode = vts_tbSurveyLanguage.LanguageCode
WHERE SurveyId = @SurveyId
AND   @Entity='Survey'
UNION ALL
SELECT 
	vts_tbMultiLanguage.LanguageCode,
	LanguageDescription, 
	DefaultLanguage
FROM vts_tbMultiLanguage
INNER JOIN vts_tbLibraryLanguage
	ON vts_tbMultiLanguage.LanguageCode = vts_tbLibraryLanguage.LanguageCode
WHERE LibraryId = @SurveyId
AND   @Entity='Library'
ORDER BY DefaultLanguage DESC, LanguageDescription


GO
/****** Object:  StoredProcedure [dbo].[vts_spNotificationModeGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all surveys email notification modes
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spNotificationModeGetAll] AS
SELECT * FROM vts_tbNotificationMode


GO
/****** Object:  StoredProcedure [dbo].[vts_spNSurveyGetVersion]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spNSurveyGetVersion]  AS
SELECT '1.9.1' as version


GO
/****** Object:  StoredProcedure [dbo].[vts_spPageOptionGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
/// <summary>
///  retrieves the options that were setup for the page
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spPageOptionGetDetails] @SurveyId int, @PageNumber int AS

SELECT * FROM vts_tbPageOption WHERE SurveyID = @SurveyID AND PageNumber = @PageNumber


GO
/****** Object:  StoredProcedure [dbo].[vts_spPageOptionUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
/// <summary>
/// updates the options that were setup for the page
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spPageOptionUpdate] 
				@SurveyId int, 
				@PageNumber int,
				@RandomizeQuestions bit,
				@EnableSubmitButton bit
AS

UPDATE vts_tbPageOption 
SET RandomizeQuestions = @RandomizeQuestions, EnableSubmitButton = @EnableSubmitButton
WHERE SurveyID = @SurveyID AND PageNumber = @PageNumber

if (@@rowcount = 0)
BEGIN
	-- no options were set add the new one in the db
	INSERT INTO vts_tbPageOption (SurveyID, PageNumber, RandomizeQuestions, EnableSubmitButton)
	VALUES (@SurveyID, @PageNumber, @RandomizeQuestions, @EnableSubmitButton)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spProgressModeGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all surveys progress modes
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spProgressModeGetAll] AS
SELECT * FROM vts_tbProgressDisplayMode


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAddNew]
			@SurveyID int,
			@LibraryID int, 
			@QuestionText nvarchar(4000),
			@SelectionModeId int,
			@LayoutModeId int,
			@DisplayOrder int, 
			@PageNumber int,
			@ColumnsNumber int,
			@MinSelectionRequired int,
			@MaxSelectionAllowed int,
			@RandomizeAnswers bit,
			@RatingEnabled bit,
			@QuestionPipeAlias nvarchar(255),
			@QuestionIDText nvarchar(255),
			@Alias nvarchar(255)='',
			@HelpText nvarchar(4000)='',
			@ShowHelpText bit =0,
			@QuestionGroupId int=null,
			@QuestionID int OUTPUT
AS

BEGIN TRAN InsertQuestion

DECLARE @UpdateDisplayOrder bit 

-- Check if there is already a question with the same display order
if @SurveyID is not null AND Exists(SELECT DisplayOrder FROM vts_tbQuestion WHERE ParentQuestionID is null AND DisplayOrder = @DisplayOrder AND SurveyID = @SurveyID)
BEGIN
	set @UpdateDisplayOrder = 1
END 
ELSE
BEGIN
	set @UpdateDisplayOrder = 0	
END

INSERT INTO vts_tbQuestion
	(SurveyID,
	LibraryID,
	SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	PageNumber,
	QuestionText,
	ColumnsNumber,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	RatingEnabled,
	QuestionPipeAlias,
	QuestionIdText,
	Alias,
	HelpText,
	ShowHelpText,
	QuestionGroupID
	)
VALUES
	(@SurveyID,
	@LibraryID, 
	@SelectionModeId,
	@LayoutModeId,
	@DisplayOrder,
	@PageNumber,
	@QuestionText,
	@ColumnsNumber,
	@MinSelectionRequired,
	@MaxSelectionAllowed,
	@RandomizeAnswers,
	@RatingEnabled,
	@QuestionPipeAlias,
	@QuestionIDText,
	@Alias,
	@HelpText,
	@ShowHelpText,
	@QuestionGroupID)

set @QuestionID = Scope_Identity()

IF @@rowcount<>0 AND @SurveyID is not null AND @UpdateDisplayOrder = 1
BEGIN
	-- Update the display order
	UPDATE vts_tbQuestion 
	SET DisplayOrder = DisplayOrder + 1 
	WHERE 
		SurveyID = @SurveyID AND
		((QuestionID<>@QuestionID AND ParentQuestionID is null) OR
 		(ParentQuestionID is not null AND ParentQuestionID <> @QuestionID)) AND
 		DisplayOrder >= @DisplayOrder
END

COMMIT TRAN InsertQuestion


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question that can have any type of answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAnswerableList] @SurveyId int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder ,
Q.QuestionIdText,Q.Alias
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	TypeMode & 4 > 1 AND 
	NOT EXISTS(SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListForPage]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question that can have any type of answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <param name="@PageNumber">
/// Page to rertieve question from
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAnswerableListForPage] @SurveyId int, @PageNumber int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder 
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	Q.PageNumber = @PageNumber AND
	TypeMode & 4 > 1 AND 
	NOT EXISTS(SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListForPageRange]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question that can have any type of answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <param name="@PageNumber">
/// Page to rertieve question from
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAnswerableListForPageRange] @SurveyId int, @StartPageNumber int, @EndPageNumber int AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder 
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	(Q.PageNumber >= @StartPageNumber AND Q.PageNumber <= @EndPageNumber) AND
	TypeMode & 4 > 1 AND 
	NOT EXISTS(SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of al parentl question that can have any type of answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAnswerableListWithoutChilds] @SurveyId int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder 
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	TypeMode & 4 > 1 AND 
	ParentQuestionID is null
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionAnswerableWithoutChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all parent questions that can have any type of answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionAnswerableWithoutChilds] @SurveyId int  AS

SELECT DISTINCT 
	vts_tbQuestion.QuestionID,
	SurveyId,
	QuestionText, 
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	PageNumber,
	ColumnsNumber,
	QuestionPipeAlias,
	(ISNULL(RepeatableSectionModeId, 0)) as RepeatableSectionModeId,
	AddSectionLinkText,
	DeleteSectionLinkText,
	(ISNULL(MaxSections, 0)) as MaxSections	
FROM vts_tbQuestion 
LEFT JOIN vts_tbQuestionSectionOption
	ON vts_tbQuestionSectionOption.QuestionID = vts_tbQuestion.QuestionID
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	TypeMode & 4 > 1 AND 
	ParentQuestionID is null
ORDER BY DisplayOrder, vts_tbQuestion.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCheckUserAssigned]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the question is assigned to this user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionCheckUserAssigned] @QuestionID int, @UserID int AS
SELECT QuestionID FROM vts_tbQuestion
LEFT JOIN vts_tbSurvey 
	ON vts_tbSurvey.SurveyID = vts_tbQuestion.SurveyID
LEFT JOIN vts_tbUserSurvey 
	ON vts_tbUserSurvey .SurveyID = vts_tbSurvey.SurveyID
WHERE QuestionID = @QuestionID AND (UserID = @UserID OR LibraryID is not null)


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
/// <param name="@ParentQuestionID">
/// Question  to which the child question will be added
/// </param>
/// <param name="@QuestionText">
/// Question's text
/// </param>
/// <param name="@QuestionID">
/// Created child question's ID
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionChildAddNew]
			@ParentQuestionID int,
			@QuestionText nvarchar(4000), 
			@QuestionID int OUTPUT
AS
-- Get parent default values
DECLARE 
	@SurveyID int,
	@DisplayOrder int,
	@SelectionModeID int,
	@PageNumber int,
	@LibraryID int,
	@RatingEnabled bit

SELECT @SurveyID = SurveyID, @LibraryID = LibraryID, @PageNumber = PageNumber, @DisplayOrder = DisplayOrder, @SelectionModeID = SelectionModeID, @RatingEnabled = RatingEnabled
FROM vts_tbQuestion WHERE QuestionID = @ParentQuestionID

INSERT INTO vts_tbQuestion
	(ParentQuestionID,
	SurveyID,
	LibraryID,
	SelectionModeId,
	DisplayOrder,
	PageNumber,
	RatingEnabled,
	QuestionText)
VALUES
	( @ParentQuestionID,
	@SurveyId,
	@LibraryId,
	@SelectionModeID,
	@DisplayOrder,
	@PageNumber,
	@RatingEnabled,
	@QuestionText)
IF @@rowcount<>0
BEGIN
	set @QuestionID = Scope_Identity()
	-- Assign the same columns to the row
	-- as the parent question
	exec vts_spAnswersCloneByQuestionId @ParentQuestionID,@QuestionID
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildCloneById]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Clones a child question and its answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the child question to clone
/// </param>
/// <param name="@ParentQuestionID">
/// Parent of the child question
/// </param>
/// <return>
/// returns the cloned question
/// </return>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionChildCloneById] 
				@QuestionID int, 
				@ParentQuestionID int,
				@SurveyID int
AS
INSERT INTO vts_tbQuestion  
	(ParentQuestionId, 
	SurveyID,
	LibraryID,
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionIdText,
	Alias,
	HelpText,
	ShowHelpText,
	QuestionGroupId
	)
SELECT      
	@ParentQuestionID, 
	@SurveyID,
	LibraryID,
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber,
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText ,
	QuestionIdText,
	Alias,
	HelpText,
	ShowHelpText,
	QuestionGroupId
FROM vts_tbQuestion WHERE QuestionID = @QuestionID
-- Check if the cloned question was created
IF @@rowCount <> 0
BEGIN
	DECLARE @ClonedQuestionID int
	-- Clone the question's answers
	set @ClonedQuestionID = Scope_Identity()
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 3
	exec vts_spAnswersCloneByQuestionId @QuestionID, @ClonedQuestionID
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildsClone]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Clones all childs of a question and its answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the parent question to clone the childs
/// </param>
/// <param name="@CloneQuestionID">
/// ID of the cloned child parent
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionChildsClone] 
				@QuestionID int, 
				@ClonedQuestionID int,
				@ClonedSurveyID int
AS
	DECLARE ChildQuestionsCursor  CURSOR FOR
	SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID
	DECLARE @ChildQuestionID int
	OPEN ChildQuestionsCursor
	FETCH ChildQuestionsCursor INTO @ChildQuestionID
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC vts_spQuestionChildCloneById 	@ChildQuestionID, @ClonedQuestionID, @ClonedSurveyID
		FETCH ChildQuestionsCursor INTO @ChildQuestionID
	END
	CLOSE ChildQuestionsCursor
	DEALLOCATE ChildQuestionsCursor


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionChildUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates a child question
/// </summary>
/// <param name="ChildQuestionID">
/// ID of the child question to update
/// </param>
/// <param name="@QuestionText">
/// Question's text
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionChildUpdate] 
			@ChildQuestionID int, 
			@QuestionText nvarchar(4000),
			@LanguageCode nvarchar(50)
AS

-- Updates text
IF @LanguageCode is null OR @LanguageCode='' 
BEGIN
	UPDATE vts_tbQuestion  
	SET 	QuestionText = @QuestionText
	WHERE
		QuestionID = @ChildQuestionID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @ChildQuestionID, @LanguageCode, 3, @QuestionText
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCloneByID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Clones a question and its answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the question to clone
/// </param>
/// <return>
/// returns the cloned question
/// </return>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionCloneByID] @QuestionID int AS
BEGIN TRANSACTION CloneQuestion
DECLARE 
	@ClonedQuestionId int,
	@OldDisplayOrder int,
	@SurveyID int
-- Clone the question
INSERT INTO vts_tbQuestion  
	(ParentQuestionId, 
	SurveyID, 
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionPipeAlias,
	LibraryID,
	QuestionIdText,
	Alias,
	HelpText,
	ShowHelpText,
	QuestionGroupId
	)
SELECT      
	ParentQuestionId, 
	SurveyID, 
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText + ' - Cloned',
	QuestionPipeAlias,
	LibraryID,
	QuestionIdText,
	Alias,
	HelpText,
	ShowHelpText,
	QuestionGroupId
FROM vts_tbQuestion WHERE QuestionID = @QuestionID
-- Check if the cloned question was created
IF @@rowCount <> 0
BEGIN
	-- Clone the question's answers
	set @ClonedQuestionID = Scope_Identity()
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID IN (3,11,12)

	SELECT @OldDisplayOrder = DisplayOrder, @SurveyID = SurveyID 
	FROM vts_tbQuestion WHERE QuestionID = @QuestionID
	exec vts_spAnswersCloneByQuestionId @QuestionID, @ClonedQuestionID

	-- Clone question's child question, if any available
	exec vts_spQuestionChildsClone @QuestionID, @ClonedQuestionID, @SurveyID

	-- Clone question section options
	exec vts_spQuestionSectionOptionClone @QuestionId, @ClonedQuestionId

	-- Clone question skip rules
	INSERT INTO vts_tbSkipLogicRule (
		ConditionalOperator,
		ExpressionOperator,
		AnswerID,
		SkipQuestionID,
		vts_tbSkipLogicRule.QuestionID,
		TextFilter,
		Score,
		ScoreMax)
	SELECT 
		ConditionalOperator,
		ExpressionOperator,
		AnswerID,
		@ClonedQuestionID,
		vts_tbSkipLogicRule.QuestionID,
		TextFilter,
		Score,
		ScoreMax
	FROM vts_tbSkipLogicRule WHERE SkipQuestionID = @QuestionID

	-- Update the display order
	UPDATE vts_tbQuestion 
	SET DisplayOrder = DisplayOrder + 1 
	WHERE 
		SurveyID = @SurveyID AND
		((QuestionID<>@QuestionID AND ParentQuestionID is null) OR
 		(ParentQuestionID is not null AND ParentQuestionID <> @ClonedQuestionID)) AND
 		DisplayOrder >= @OldDisplayOrder 
END
COMMIT TRANSACTION CloneQuestion
exec vts_spQuestionGetDetails @ClonedQuestionID, null


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopy]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Copy an existing question to another survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionCopy]
				@QuestionID int, 
				@NewSurveyID int,
				@DisplayOrder int,
				@PageNumber int,
				@QuestionCopyID int output
AS

BEGIN TRANSACTION CopyQuestion

INSERT INTO vts_tbQuestion  
	(ParentQuestionId, 
	SurveyID,
	LibraryID,
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionPipeAlias,
	QuestionIDText,
	HelpText,
	Alias,
	QuestiongroupID,
	ShowHelpText)
SELECT      
	ParentQuestionId, 
	@NewSurveyID,
	null, 
	SelectionModeId, 
	LayoutModeId, 
	@DisplayOrder,
	@PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionPipeAlias,
	QuestionIDText,
	HelpText,
	Alias,
	QuestionGroupID,
	ShowHelpText
FROM vts_tbQuestion WHERE QuestionID = @QuestionID

-- Check if the cloned question was created
IF @@rowCount <> 0
BEGIN
	-- Clone the question's answers
	set @QuestionCopyID = Scope_Identity()
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @QuestionCopyID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID in(3,10,11,12)	

	exec vts_spQuestionChildsClone @QuestionID, @QuestionCopyID, @NewSurveyID
	UPDATE vts_tbQuestion SET DisplayOrder = @DisplayOrder, PageNumber = @PageNumber 
	WHERE SurveyID = @NewSurveyID AND ParentQuestionid = @QuestionCopyID

	exec vts_spAnswersCloneByQuestionId @QuestionID, @QuestionCopyID

	exec vts_spQuestionSectionOptionClone @QuestionId, @QuestionCopyId

	-- Update the display order
	UPDATE vts_tbQuestion 
	SET DisplayOrder = DisplayOrder + 1 
	WHERE 
		SurveyID = @NewSurveyID AND
		((QuestionID<>@QuestionCopyID AND ParentQuestionID is null) OR
 		(ParentQuestionID is not null AND ParentQuestionID <> @QuestionCopyID)) AND
 		DisplayOrder >= @DisplayOrder
END

COMMIT TRANSACTION CopyQuestion


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopyToLibrary]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Copy an existing question to a library
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionCopyToLibrary]
				@QuestionID int, 
				@LibraryId int,
				@QuestionCopyID int output
AS

BEGIN TRANSACTION CopyQuestionToLibrary

INSERT INTO vts_tbQuestion  
	(ParentQuestionId, 
	SurveyID,
	LibraryID,
	SelectionModeId, 
	LayoutModeId, 
	DisplayOrder,
	PageNumber, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionPipeAlias,
	QuestionIDText,
	HelpText,
	Alias,QuestiongroupID,
	showhelpText)
SELECT      
	ParentQuestionId, 
	null,
	@LibraryID, 
	SelectionModeId, 
	LayoutModeId, 
	1,
	1, 
	MinSelectionRequired, 
	MaxSelectionAllowed, 
	RatingEnabled,
	ColumnsNumber,
	RandomizeAnswers,
	QuestionText,
	QuestionPipeAlias,
	QuestionIDText,
	HelpText,
	Alias,QuestionGroupID,
	ShowHelpText
FROM vts_tbQuestion WHERE QuestionID = @QuestionID

-- Check if the cloned question was created
IF @@rowCount <> 0
BEGIN
	-- Clone the question's answers
	set @QuestionCopyID = Scope_Identity()
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @QuestionCopyID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 3	

	exec vts_spQuestionChildsClone @QuestionID, @QuestionCopyID, null

	UPDATE vts_tbQuestion SET LibraryID = @LibraryID WHERE ParentQuestionid = @QuestionCopyID

	exec vts_spAnswersCloneByQuestionId @QuestionID, @QuestionCopyID

	exec vts_spQuestionSectionOptionClone @QuestionId, @QuestionCopyId

END

COMMIT TRANSACTION CopyQuestionToLibrary


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionCopyToSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Copy all question of a survey to another survey, mainly used in the clone survey process
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionCopyToSurvey] 
				@SurveyID int, 
				@NewSurveyID int
AS
DECLARE @QuestionID int
DECLARE @QuestionCopyID int
DECLARE QuestionListCursor  CURSOR FOR
	SELECT QuestionID FROM vts_tbQuestion
	WHERE SurveyID = @SurveyID AND ParentQuestionid is null
OPEN QuestionListCursor
FETCH QuestionListCursor INTO @QuestionID
WHILE @@FETCH_STATUS = 0
BEGIN
	INSERT INTO vts_tbQuestion  
		(ParentQuestionId, 
		SurveyID, 
		SelectionModeId, 
		LayoutModeId, 
		DisplayOrder,
		PageNumber, 
		MinSelectionRequired, 
		MaxSelectionAllowed, 
		RatingEnabled,
		ColumnsNumber,
		RandomizeAnswers,
		QuestionText,
		QuestionPipeAlias,
		QuestionIDText,
	HelpText,
	Alias,QuestionGroupID,
	ShowHelpText)
	SELECT      
		ParentQuestionId, 
		@NewSurveyID, 
		SelectionModeId, 
		LayoutModeId, 
		DisplayOrder,
		PageNumber, 
		MinSelectionRequired, 
		MaxSelectionAllowed, 
		RatingEnabled,
		ColumnsNumber,
		RandomizeAnswers,
		QuestionText,
		QuestionPipeAlias,
		QuestionIDText,
	HelpText,
	Alias,QuestionGroupID,
	ShowHelpText
	FROM vts_tbQuestion WHERE QuestionID = @QuestionID
-- Check if the cloned question was created
IF @@rowCount <> 0
BEGIN
	-- Clone the question's answers
	set @QuestionCopyID = Scope_Identity()
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @QuestionCopyID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 3	

	exec vts_spQuestionChildsClone @QuestionID, @QuestionCopyID, @NewSurveyID
	exec vts_spAnswersCloneByQuestionId @QuestionID, @QuestionCopyID
	exec vts_spQuestionSectionOptionClone @QuestionId, @QuestionCopyId
END
FETCH QuestionListCursor INTO @QuestionID
END
CLOSE QuestionListCursor 
DEALLOCATE QuestionListCursor


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionDeleteByID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes a question and reorder the other questions
/// </summary>
/// <param name="@QuestionID">
/// ID of the question to delete
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionDeleteByID]  @QuestionID int AS
DECLARE
		@DisplayOrder int,
		@SurveyId int,
		@ParentQuestionID int

BEGIN TRANSACTION DeleteQuestion

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID in  (select AnswerID FROM vts_tbAnswer WHERE QuestionID = @QuestionID OR QuestionID in (select QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID)) AND
	 (LanguageMessageTypeID = 1 OR LanguageMessageTypeID = 2)

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID in  (select QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID) AND LanguageMessageTypeID = 3

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID = @QuestionID AND 
	(LanguageMessageTypeID = 3 OR LanguageMessageTypeID = 6 OR LanguageMessageTypeID = 7 OR LanguageMessageTypeID = 8 OR LanguageMessageTypeID = 9)

-- Retrieve the current display order
SELECT @SurveyID = surveyId, @DisplayOrder  = DisplayOrder, @ParentQuestionID = ParentQuestionId
FROM vts_tbQuestion 
WHERE QuestionID = @QuestionID

-- Deletes Filter rules associated with this question
DELETE FROM vts_tbFilterRule WHERE questionID = @QuestionID

-- Deletes Branching rules associated with this question
DELETE FROM vts_tbBranchingRule WHERE QuestionID = @QuestionID

-- Deletes skip logic rules associated with this question
DELETE FROM vts_tbSkipLogicRule WHERE QuestionID = @QuestionID

-- Deletes Message condition rules associated with this question
DELETE FROM vts_tbMessageCondition WHERE QuestionID = @QuestionID

-- Deletes the answer subscribers
DELETE FROM vts_tbAnswerConnection WHERE PublisherAnswerId in (select AnswerID FROM vts_tbAnswer WHERE QuestionID = @QuestionID OR QuestionID in (select QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID))

-- Deletes the questions answers
DELETE FROM vts_tbAnswer WHERE AnswerId in (select AnswerID FROM vts_tbAnswer WHERE QuestionID = @QuestionID OR QuestionID in (select QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID))

-- Deletes the child questions
DELETE FROM vts_tbQuestion WHERE ParentQuestionID = @QuestionID

-- Deletes the question
DELETE FROM vts_tbQuestion WHERE QuestionID = @QuestionID


if @ParentQuestionID is null
BEGIN
	-- Updates the questions display order if a parent question is deleted
	UPDATE vts_tbQuestion 
	SET DisplayOrder = DisplayOrder - 1 
	WHERE 
		SurveyID = @SurveyID AND
		DisplayOrder >= @DisplayOrder
END
COMMIT TRANSACTION DeleteQuestion


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswerConnection]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all answers that have subscribe to other answers in the question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetAnswerConnection] @QuestionId int AS

SELECT PublisherAnswerId,
	SubscriberAnswerId
FROM vts_tbAnswerConnection
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswerConnection.SubscriberAnswerId = vts_tbAnswer.AnswerId
WHERE vts_tbAnswer.QuestionId = @QuestionId


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all question's answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the question from which we want the answers
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetAnswers] @QuestionID int, @LanguageCode nvarchar(50) AS

SELECT 
	DisplayOrder,
	AnswerID,
	vts_tbAnswer.AnswerTypeID,
	QuestionId,
	AnswerText = 
		CASE @LanguageCode 
		WHEN null THEN
			AnswerText 
		WHEN '' THEN
			AnswerText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 1 AND
			LanguageCode = @LanguageCode), AnswerText)		
		END,
	ImageURL, 
	(SELECT count(*) FROM vts_tbVoterAnswers INNER JOIN vts_tbVoter ON vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID WHERE  vts_tbVoter.Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) as VoteCount,
	RatePart,
	Selected,
	DefaultText = 
		CASE @LanguageCode 
		WHEN null THEN
			AnswerText 
		WHEN '' THEN
			DefaultText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 2 AND
			LanguageCode = @LanguageCode), null)		
		END,
	ScorePoint,
	FieldWidth,
	FieldHeight,
	FieldLength,
	TypeMode,	
	XMLDatasource,
	DataSource,
	JavascriptCode,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	TypeNameSpace,
	TypeAssembly,
	AnswerPipeAlias,
	Mandatory,
	RegExpression,
	RegExMessage,
	vts_tbAnswer.RegularExpressionId
FROM vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
LEFT JOIN vts_tbRegularExpression
	ON vts_tbAnswer.RegularExpressionId = vts_tbRegularExpression.RegularExpressionId
WHERE QuestionID=@QuestionID ORDER BY vts_tbAnswer.DisplayOrder, AnswerID ASC


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetAnswersList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question's answers
/// </summary>
/// <param name="@QuestionID">
/// ID of the question from which we want the answers
/// </param>
/// <returns>
/// AnswerID, Answer
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetAnswersList] @QuestionID int AS
SELECT 
	AnswerID,
	vts_tbAnswer.AnswerTypeId,
	AnswerText,
	TypeMode,
	displayOrder,
	answerIdtext,
	answeralias	
FROM vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE QuestionID=@QuestionID ORDER BY vts_tbAnswer.DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabResults]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// returns a results set with the compare question's answers number of voter 
/// that have also answered the base question answer
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetCrossTabResults] @CompareQuestionID int, @BaseQuestionAnswerId int AS

SELECT 
	(select count(voterId) FROM vts_tbVoterAnswers WHERE AnswerID = asw.AnswerID AND VoterID in 
		(select voterId FROM vts_tbVoterAnswers WHERE AnswerID = @BaseQuestionAnswerId)) 
	AS Total
FROM  vts_tbAnswer asw
INNER JOIN vts_tbAnswerType 
	ON asw.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE QuestionID = @CompareQuestionID AND vts_tbAnswerType.TypeMode & 1 > 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabTotalResults]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// returns a results set with the compare question's answers total number of voter 
/// that have or have not answered the base question answers
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetCrossTabTotalResults] @CompareQuestionID int, @BaseQuestionId int AS

SELECT 
	-- answered count
	(select count(voterId) FROM vts_tbVoterAnswers WHERE AnswerID = asw.AnswerID AND 
		VoterID IN 
		(select voterId FROM vts_tbVoterAnswers
 		WHERE answerId = asw.AnswerId and VoterID IN 
		(select voterId FROM vts_tbVoterAnswers
 		INNER JOIN vts_tbAnswer ON vts_tbAnswer.AnswerID = vts_tbVoterAnswers.AnswerID
 		WHERE QuestionID = @BaseQuestionId)))

	+ 	
	-- unanswered count
	(select count(voterId) FROM vts_tbVoterAnswers WHERE AnswerID = asw.AnswerID AND (VoterID NOT IN 
		(select voterId FROM vts_tbVoterAnswers
 		INNER JOIN vts_tbAnswer ON vts_tbAnswer.AnswerID = vts_tbVoterAnswers.AnswerID
 		WHERE QuestionID = @BaseQuestionId)))
	AS Total
FROM vts_tbAnswer asw
INNER JOIN vts_tbAnswerType 
	ON asw.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE QuestionID = @CompareQuestionID AND vts_tbAnswerType.TypeMode & 1 > 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetCrossTabUnansweredResults]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// returns a results set with the compare question's answers number of voter 
/// that have not answered the base question answers
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetCrossTabUnansweredResults] @CompareQuestionID int, @BaseQuestionId int AS

SELECT 
	(select count(voterId) FROM vts_tbVoterAnswers WHERE AnswerID = asw.AnswerID AND  VoterID NOT IN 
		(select voterId FROM vts_tbVoterAnswers
 		INNER JOIN vts_tbAnswer ON vts_tbAnswer.AnswerID = vts_tbVoterAnswers.AnswerID
 		WHERE QuestionID = @BaseQuestionId)) as Total
FROM vts_tbAnswer asw
INNER JOIN vts_tbAnswerType 
	ON asw.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE QuestionID = @CompareQuestionID AND vts_tbAnswerType.TypeMode & 1 > 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get details of a question
/// </summary>
/// <param name="@QuestionID">
/// ID of the questions from which we want the details
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID, 
///	QuestionText, 
///	SelectionModeId,
///	LayoutModeId,
///	DisplayOrder
///	MinSelectionRequired,
//	MaxSelectionAllowed
//	RandomizeAnswers,
//	RatingEnabled,
//	TypeMode
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetDetails]  @QuestionID int, @LanguageCode nvarchar(50) AS
SELECT 
	vts_tbQuestion.QuestionID,
	SurveyID,
	LibraryID,
	QuestionText = 
		CASE @LanguageCode 
		WHEN null THEN
			QuestionText 
		WHEN '' THEN
			QuestionText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 3 AND
			LanguageCode = @LanguageCode), QuestionText)		
		END,
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	RatingEnabled,
	TypeMode,
	PageNumber,
	ColumnsNumber,
	QuestionPipeAlias,
	(ISNULL(RepeatableSectionModeId, 0)) as RepeatableSectionModeId,
	AddSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			AddSectionLinkText 
		WHEN '' THEN
			AddSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 6 AND
			LanguageCode = @LanguageCode), AddSectionLinkText)	
		END,
	DeleteSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			DeleteSectionLinkText 
		WHEN '' THEN
			DeleteSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 7 AND
			LanguageCode = @LanguageCode), DeleteSectionLinkText)	
		END,

	EditSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			EditSectionLinkText 
		WHEN '' THEN
			EditSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 9 AND
			LanguageCode = @LanguageCode), EditSectionLinkText)	
		END,
	UpdateSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			UpdateSectionLinkText 
		WHEN '' THEN
			UpdateSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 8 AND
			LanguageCode = @LanguageCode), UpdateSectionLinkText)
		END,
	(ISNULL(MaxSections, 0)) as MaxSections, 
	QuestionIdText,
	QuestionGroupId,
	HelpText = 
		CASE @LanguageCode 
		WHEN null THEN
			HelpText 
		WHEN '' THEN
			HelpText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 11 AND
			LanguageCode = @LanguageCode), HelpText)		
		END,
	ShowHelpText,
	Alias= 
		CASE @LanguageCode 
		WHEN null THEN
			Alias 
		WHEN '' THEN
			Alias
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 12 AND
			LanguageCode = @LanguageCode), Alias)		
		END
FROM vts_tbQuestion 
LEFT JOIN vts_tbQuestionSectionOption
	ON vts_tbQuestionSectionOption.QuestionID = vts_tbQuestion.QuestionID
INNER JOIN vts_tbQuestionSelectionMode 
	ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
WHERE vts_tbQuestion.QuestionID=@QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetForExport]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vts_spQuestionGetForExport]  @QuestionID int AS

SELECT DISTINCT vts_tbAnswerType.* FROM vts_tbAnswerType
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.QuestionID = @QuestionID OR vts_tbQuestion.ParentQuestionID = @QuestionID

SELECT DISTINCT vts_tbRegularExpression.* FROM vts_tbRegularExpression
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.RegularExpressionID = vts_tbRegularExpression.RegularExpressionID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.QuestionID = @QuestionID OR vts_tbQuestion.ParentQuestionID = @QuestionID


-- Get main questions and answers
SELECT 
	QuestionID,
	ParentQuestionID,
	QuestionText, 
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	RatingEnabled,
	ColumnsNumber,
	QuestionPipeAlias,
	Alias,
	HelpText,
	QuestionIdText,
	QuestionGroupId,
	ShowHelpText
FROM vts_tbQuestion 
WHERE QuestionID = @QuestionID AND ParentQuestionID is null

SELECT 
	vts_tbAnswer.AnswerID,
	vts_tbAnswer.QuestionID,
	AnswerText,
	ImageURL,
	DefaultText,
	AnswerPipeAlias,
	vts_tbAnswer.DisplayOrder,
	ScorePoint,
	RatePart,
	Selected,
	AnswerTypeID,
	RegularExpressionId,
	Mandatory,
	Answeralias,
	answerIdText,
	SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep,
	vts_tbAnswer.AnswerID OldId
	
FROM vts_tbAnswer
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.QuestionID = @QuestionID AND vts_tbQuestion.ParentQuestionID is null

SELECT 
	PublisherAnswerID,
	SubscriberAnswerID,
	vts_tbAnswer.QuestionId
FROM vts_tbAnswerConnection
INNER JOIN vts_tbAnswer
	ON vts_tbAnswer.AnswerId = PublisherAnswerID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.QuestionID = @QuestionID AND vts_tbQuestion.ParentQuestionID is null

-- Retrieves all child questions and their answers
SELECT 
	ParentQuestionID,
	QuestionText
FROM vts_tbQuestion 
WHERE ParentQuestionID = @QuestionID


SELECT 
	vts_tbAnswerProperty.AnswerID,
	Properties
FROM vts_tbAnswerProperty
INNER JOIN vts_tbAnswer
	ON vts_tbAnswerProperty.AnswerID = vts_tbAnswer.AnswerID  
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.QuestionID = @QuestionID AND vts_tbQuestion.ParentQuestionID is null

SELECT 
	DeleteSectionLinkText,
	EditSectionLinkText,
	UpdateSectionLinkText,
	AddSectionLinkText,
	QuestionId,
	MaxSections,
	RepeatableSectionModeId
FROM vts_tbQuestionSectionOption
WHERE QuestionID = @QuestionID

SELECT QuestionID, AnswerID FROM vts_tbQuestionSectionGridAnswer WHERE QuestionID = @QuestionID

SELECT [LanguageItemId]
      ,[LanguageCode]
      ,[LanguageMessageTypeId]
      ,[ItemText]
  FROM [dbo].[vts_tbMultiLanguageText]
  where
  (
   languageMessageTypeId=10 OR
  ( [LanguageItemId] =@QuestionID and
  [LanguageMessageTypeId] in(3,11,12))
  OR( [LanguageItemId] in (SELECT answerid from 
  vts_tbAnswer as ans  where ans.QuestionId=@QuestionID ) and
  [LanguageMessageTypeId] in(1,2,13))  )
  and len(ItemText) !=0
  and LanguageItemId in(
  SELECT g.ID
   FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE q.QuestionId=@QuestionId)
  UNION
  SELECT g.ID FROM vts_tbQuestionGroups AS g
  WHERE ID IN(
  SELECT g.ParentGroupID FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE q.QuestionId=@QuestionId)
  )
  )
  
SELECT g.ID,g.ParentGroupID,g.GroupName,g.DisplayOrder,g.ID OldId
   FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE q.QuestionId=@QuestionId)
  UNION
  SELECT g.ID,g.ParentGroupID,g.GroupName,g.DisplayOrder ,g.ID OldId FROM vts_tbQuestionGroups AS g
  WHERE ID IN(
  SELECT g.ParentGroupID FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE q.QuestionId=@QuestionId)
  )
  


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetHierarchyForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all questions and child questions
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetHierarchyForSurvey] @SurveyID int
AS
SELECT 
	QuestionID,
	ParentQuestionID,
	SurveyId,
	QuestionText, 
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	PageNumber,
	ColumnsNumber,
	RandomizeAnswers,
	RatingEnabled,
	QuestionPipeAlias
FROM vts_tbQuestion
INNER JOIN vts_tbQuestionSelectionMode 
	ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
WHERE 
	SurveyID=@SurveyId AND
	TypeMode & 4 = 4 
ORDER BY DisplayOrder ASC


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetResults]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetResults] 
				@QuestionID int,
				@FilterID int = -1,
				@SortOrder varchar(4) = 'ANS',
				@LanguageCode nvarchar(50),
				@StartDate datetime,
				@EndDate datetime
 AS
SELECT 
	Q.QuestionID,
	Q.ParentQuestionID,
	Q.SurveyId,
	Q.SelectionModeId,
	Q.QuestionText, 
	 (select QuestionText FROM vts_tbQuestion WHERE QuestionID = Q.ParentQuestionID) as ParentQuestionText,
	Q.DisplayOrder,
	Q.RatingEnabled
FROM vts_tbQuestion Q
WHERE 
	Q.QuestionID=@QuestionID OR Q.ParentQuestionID = @QuestionID
ORDER BY Q.QuestionID


IF @FilterID = -1
BEGIN
	SELECT 
		AnswerID,
		AnswerText,
		 (select count(*) 
			FROM vts_tbVoterAnswers 
			INNER JOIN vts_tbVoter ON 
				vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
			WHERE Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID AND
			DATEDIFF (d,@startDate,vts_tbVoter.VoteDate) >= 0 AND DATEDIFF (d,@endDate,vts_tbVoter.VoteDate) <= 0
			AND (vts_tbVoter.LanguageCode = @LanguageCode OR
			 ((@LanguageCode is null OR @LanguageCode = '') AND (LanguageCode is null OR LanguageCode ='')) OR
			(@LanguageCode = '-1' AND (LanguageCode is not null OR LanguageCode is null)))

) as VoterCount,
		vts_tbAnswer.QuestionID,
		vts_tbAnswer.AnswerTypeID,
		SelectionModeId,
		TypeMode,
		RatePart
	FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
	INNER JOIN vts_tbAnswerType
		ON vts_tbAnswerType.AnswerTypeID = vts_tbAnswer.AnswerTypeID
	WHERE 
		vts_tbQuestion.QuestionID=@QuestionID OR vts_tbQuestion.parentQuestionID = @QuestionID
 	ORDER BY 
		case when @SortOrder = 'ANS' then vts_tbAnswer.DisplayOrder end ,
		case when @SortOrder = 'ASC' then 
		 (select count(*) 
			FROM vts_tbVoterAnswers 
			INNER JOIN vts_tbVoter ON 
				vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
			WHERE Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) end ASC ,
		case when @SortOrder = 'DESC' then  
		(select count(*) 
			FROM vts_tbVoterAnswers 
			INNER JOIN vts_tbVoter ON 
				vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
			WHERE Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) end DESC
END 
ELSE
	EXEC vts_spVoterFilter @FilterID, @QuestionID, @SortOrder, @StartDate, @EndDate, @LanguageCode


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGetSelectableAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all question's answers that can be selected
/// </summary>
/// <param name="@QuestionID">
/// ID of the question from which we want the selectable answers
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGetSelectableAnswers] @QuestionID int AS
SELECT 
	AnswerID,
	vts_tbAnswer.AnswerTypeID,
	QuestionId,
	AnswerText,
	ImageURL, 
	(SELECT count(*) FROM vts_tbVoterAnswers INNER JOIN vts_tbVoter ON vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID WHERE  vts_tbVoter.Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) as VoteCount,
	RatePart,
	Selected,
	DefaultText,
	FieldWidth,
	FieldHeight,
	FieldLength,
	TypeMode,	
	XMLDatasource,
	DataSource,
	JavascriptCode,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	TypeNameSpace,
	TypeAssembly,
	AnswerPipeAlias,
	Mandatory,
	RegExpression,
	RegExMessage,
	vts_tbAnswer.RegularExpressionId
FROM vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
LEFT JOIN vts_tbRegularExpression
	ON vts_tbAnswer.RegularExpressionId = vts_tbRegularExpression.RegularExpressionId
WHERE QuestionID=@QuestionID
AND vts_tbAnswerType.TypeMode & 1 > 0
ORDER BY vts_tbAnswer.DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupAddNew]
			@GroupName nvarchar(255),
			@ParentGroupID int, 
			@LanguageCode nvarchar(50) = null,
			@QuestionGroupID int OUTPUT
AS

BEGIN TRAN InsertQuestionGroup
declare @disp int
select @disp = ISNULL(MAX(DisplayOrder), 0) from vts_tbQuestionGroups 
where ParentGroupID = @ParentGroupID

INSERT INTO vts_tbQuestionGroups
	(GroupName,
	ParentGroupID,
	DisplayOrder
	)
VALUES
	(@GroupName,	 
	case when @ParentGroupID=-1 then null else @parentGroupID end,
	@disp + 1)

set @QuestionGroupID = Scope_Identity()

-- Updates text
IF @LanguageCode is not null and @LanguageCode<>''
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @QuestionGroupID, @LanguageCode, 10, @GroupName	
END

COMMIT TRAN InsertQuestionGroup


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupDelete]
			@QuestionGroupID int 
AS

BEGIN TRAN InsertQuestionGroup

delete from vts_tbMultiLanguageText where
languagemessagetypeid=10
and languageitemid in (
  select id from vts_tbQuestionGroups
where ID = @QuestionGroupID or ParentGroupId = @QuestionGroupID
);
update vts_tbQuestion 
set QuestionGroupID = null
where QuestionGroupID = @QuestionGroupID or
QuestionGroupId in(Select ID from vts_tbQuestionGroups
                             where ParentGroupId=@QuestionGroupId);

delete from vts_tbQuestionGroups
where ID = @QuestionGroupID or ParentGroupId = @QuestionGroupID


COMMIT TRAN InsertQuestionGroup


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupGetAll]
@LanguageCode nvarchar(50) = null
AS

select ID, 
		CASE @LanguageCode 
		WHEN null THEN
			GroupName 
		WHEN '' THEN
			GroupName 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionGroups.ID AND
			LanguageMessageTypeId = 10 AND
			LanguageCode = isnull(@LanguageCode,'@@@@')), GroupName)		
		END as GroupName,
	ParentGroupID,
	DisplayOrder from vts_tbQuestionGroups
order by DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupGetByQuestionID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupGetByQuestionID]
	@QuestionId int
AS
	declare @gid int
	select @gid = QuestionGroupID from vts_tbQuestion where QuestionId = @QuestionId

	select ID, GroupName,
		ParentGroupID,
		DisplayOrder from vts_tbQuestionGroups
		where ParentGroupID = @gid	
	UNION 
	select ID, GroupName,
		ParentGroupID,
		DisplayOrder from vts_tbQuestionGroups
		where ID = @gid


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupUpdate]
			@GroupName nvarchar(255),			
			@QuestionGroupID int,
			@ParentGroupID int,
			@LanguageCode nvarchar(50) = null
AS

BEGIN TRAN InsertQuestionGroup

UPDATE vts_tbQuestionGroups
	set
	ParentGroupId = case when @ParentGroupID=-1 then null else @ParentGroupID End
where ID = @QuestionGroupID

-- Updates text
IF @LanguageCode is null OR @LanguageCode=''
BEGIN
	UPDATE vts_tbQuestionGroups
	SET 	GroupName = @GroupName
	WHERE ID = @QuestionGroupID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @QuestionGroupID, @LanguageCode, 10, @GroupName	
END

COMMIT TRAN InsertQuestionGroup


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionGroupUpdateDisplayID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new question to a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionGroupUpdateDisplayID]
	@QuestionGroupId int,
	@Up int = 0
AS
	BEGIN TRAN UpdateQuestionGroup

	declare @parentId int
	declare @disp int	
	declare @previd int	
	declare @prevdisp int
	declare @way int
	declare @rid int		

	select @parentId = ParentGroupID from vts_tbQuestionGroups 
		where ID = @QuestionGroupId	
	
	create table #tempQuestionGroups
    (GroupID int, DisplayOrder int, RowID int IDENTITY (1, 1))
    
	insert #tempQuestionGroups select ID, DisplayOrder from vts_tbQuestionGroups 
		where ISNULL(ParentGroupID, -1) = ISNULL(@parentId, -1) order by DisplayOrder 
	
	set @way = 
		case (@Up) 
		when 1 then -1
		when 0 then 1
		end
		
	select @rid = RowId + @way from #tempQuestionGroups where GroupID = @QuestionGroupId
	
	if (not exists(select 1 from #tempQuestionGroups where @rid = RowId))
		select @rid = 
			case (@Up)
			when 0 then MAX(RowID)
			when 1 then MIN(RowID)			
			end
			 from #tempQuestionGroups 				 	
	
	select @previd = GroupID from #tempQuestionGroups where RowID = @rid
	
	update vts_tbQuestionGroups 
		set DisplayOrder = tmp.RowId
		from vts_tbQuestionGroups as QG
		inner join #tempQuestionGroups tmp on QG.ID = tmp.GroupID
	
	select @prevdisp = DisplayOrder from vts_tbQuestionGroups where ID = @previd
	select @disp = DisplayOrder from vts_tbQuestionGroups where ID = @QuestionGroupId
				
	update vts_tbQuestionGroups 
		set DisplayOrder = @disp 
		where ID = @previd
	
	update vts_tbQuestionGroups 
		set DisplayOrder = @prevdisp 
		where ID = @QuestionGroupId	
	
	drop table #tempQuestionGroups	
	
	
	COMMIT TRAN UpdateQuestionGroup


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionLibrarySingleAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list from the library of all parent questions that can have any type of answers, except those that have child questions 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionLibrarySingleAnswerableListWithoutChilds] @LibraryId int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder 
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	LibraryId = @LibraryId AND 
	TypeMode & 4 > 1 AND 
	ParentQuestionID is null
	AND QuestionID NOT IN (SELECT ParentQuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionListWithSelectableAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question that have selectable answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionListWithSelectableAnswers] @SurveyId int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder FROM vts_tbQuestion Q
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.QuestionID = Q.QuestionID
INNER JOIN vts_tbAnswerType
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE 
	SurveyID = @SurveyID AND 
	vts_tbAnswerType.TypeMode & 1 > 0 AND 
	NOT EXISTS(SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionListWithSelectableAnswersForPage]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question that have selectable answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <param name="@SurveyID">
/// Page to rertieve question from
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionListWithSelectableAnswersForPage] @SurveyId int, @PageNumber int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder FROM vts_tbQuestion Q
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.QuestionID = Q.QuestionID
INNER JOIN vts_tbAnswerType
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE 
	SurveyID = @SurveyID AND 
	Q.PageNumber = @PageNumber AND
	vts_tbAnswerType.TypeMode & 1 > 0 AND 
	NOT EXISTS(SELECT QuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMatrixDeleteAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete all the columns of the given matrix
/// </summary>
/// <param name="@ParentQuestionID">
/// Parent matrix question id to find child questions
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionMatrixDeleteAnswers]
				@ParentQuestionId int
AS
DELETE FROM vts_tbAnswer 
WHERE AnswerID in 
	(SELECT AnswerID 
	FROM vts_tbAnswer 
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
	WHERE 
		 vts_tbQuestion.QuestionID = @ParentQuestionID OR 
		 vts_tbQuestion.ParentQuestionID = @ParentQuestionID)


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMoveDown]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a question positions down 
/// </summary>
/// <param name="@QuestionID">
/// ID of the questions to move one position down
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionMoveDown] @QuestionID int 
AS
DECLARE
	@OldDisplayOrder int,
	@NewDisplayOrder int,
	@OldPageNumber int,
	@NewPageNumber int,
	@SurveyID int
SELECT 
	@OldDisplayOrder = DisplayOrder,
	@OldPageNumber = PageNumber,
	@SurveyID = SurveyID
FROM 
	vts_tbQuestion
WHERE
	QuestionID = @QuestionID
SELECT TOP 1  
	@NewDisplayOrder = DisplayOrder,
	@NewPageNumber = PageNumber
FROM 
	vts_tbQuestion
WHERE
	SurveyID = @SurveyID AND
	ParentQuestionID is null AND
	DisplayOrder > @OldDisplayOrder
	ORDER BY DisplayOrder ASC	
if @@ROWCOUNT <>0
BEGIN
	-- Are we just changing the page or are we moving the question behind another one ?
	IF @OldPageNumber = @NewPageNumber 
	BEGIN
		-- Move down previous question
		UPDATE vts_tbQuestion 
			set DisplayOrder = @OldDisplayOrder 
		WHERE 
			DisplayOrder = @NewDisplayOrder AND
			SurveyID = @SurveyID 
		-- Move up current question
		UPDATE vts_tbQuestion set DisplayOrder = @NewDisplayOrder WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
	ELSE IF @OldPageNumber +1 < @NewPageNumber 
	BEGIN
		-- Move one page down
		UPDATE vts_tbQuestion set PageNumber = PageNumber+1 WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END 
	ELSE
	BEGIN
		-- Move one page down
		UPDATE vts_tbQuestion set PageNumber = @NewPageNumber WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionMoveUp]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a question positions up 
/// </summary>
/// <param name="@QuestionID">
/// ID of the questions to move one position up
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionMoveUp] @QuestionID int 
AS
DECLARE
	@OldDisplayOrder int,
	@OldPageNumber int,
	@NewDisplayOrder int,
	@NewPageNumber int,
	@SurveyID int
SELECT 
	@OldDisplayOrder = DisplayOrder,
	@OldPageNumber = PageNumber,
	@SurveyID = SurveyID
FROM 
	vts_tbQuestion
WHERE
	QuestionID = @QuestionID
SELECT TOP 1  
	@NewDisplayOrder = DisplayOrder,
	@NewPageNumber = PageNumber
FROM 
	vts_tbQuestion
WHERE
	SurveyID = @SurveyID AND
	ParentQuestionID is null AND
	DisplayOrder < @OldDisplayOrder
	ORDER BY DisplayOrder DESC
-- Is this the first question ?
IF @@ROWCOUNT <>0
BEGIN
	-- Are we just changing the page or are we moving the question in front of another one ?
	IF @OldPageNumber = @NewPageNumber 
	BEGIN
		-- Move down previous question
		UPDATE vts_tbQuestion 
			set DisplayOrder = @OldDisplayOrder 
		WHERE 
			DisplayOrder = @NewDisplayOrder AND
			SurveyID = @SurveyID
		-- Move up current question
		UPDATE vts_tbQuestion set DisplayOrder = @NewDisplayOrder WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
	ELSE IF @OldPageNumber - 1 > @NewPageNumber 
	BEGIN
		-- Move one page up
		UPDATE vts_tbQuestion set PageNumber = PageNumber-1 WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID	
	END 
	ELSE
	BEGIN
		-- Move one page up
		UPDATE vts_tbQuestion set PageNumber = @NewPageNumber WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID 		
	END 
END
ELSE
BEGIN
	-- Check if there are any page breaks before
	IF @OldPageNumber>1
	BEGIN
		UPDATE vts_tbQuestion set DisplayOrder = 1, PageNumber = PageNumber-1 WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionOrderUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spQuestionOrderUpdate] 
@QuestionID int, 
@UpdateUp  bit = 0 -- 1 to move up, or zero to move down
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @NewDisplayOrder int, @LibId int, @OldQuestionId int
declare @OrderIndex int, @CurrentDisplayOrder int, @MaxOrderId int
declare @QID int

select @LibId = LibraryID from vts_tbQuestion where QuestionId = @QuestionID

create table #tempQuestions
    (QuestionId int, DisplayOrder int)

insert #tempQuestions select QuestionId, DisplayOrder from vts_tbQuestion where LibraryID = @LibId order by DisplayOrder 

DECLARE cursorQuestions CURSOR for
 SELECT QuestionId, DisplayOrder FROM #tempQuestions order by DisplayOrder

 -- we make reorder of dysplayorder in case of duplicating displayorderid
 set @OrderIndex = 0
 OPEN cursorQuestions
 FETCH NEXT FROM cursorQuestions
 INTO @QID, @CurrentDisplayOrder
 While @@FETCH_STATUS = 0
 Begin
	set @OrderIndex = @OrderIndex + 1
	UPDATE vts_tbQuestion SET DisplayOrder = @OrderIndex WHERE QuestionId = @QID
	FETCH NEXT FROM cursorQuestions
		INTO @QID, @CurrentDisplayOrder
 End
 CLOSE cursorQuestions;
 DEALLOCATE cursorQuestions;
 drop table #tempQuestions;

 select @MaxOrderId = MAX(DisplayOrder) from vts_tbQuestion where LibraryID = @LibId
 select @CurrentDisplayOrder = DisplayOrder, @LibId = LibraryID from vts_tbQuestion where QuestionId = @QuestionID
 
 if @UpdateUp > 0
	set @NewDisplayOrder = @CurrentDisplayOrder - 1
 else
	set @NewDisplayOrder = @CurrentDisplayOrder + 1 
       
 if @NewDisplayOrder < 1
	set @NewDisplayOrder = 1
 if @NewDisplayOrder >= @MaxOrderId
	set @NewDisplayOrder = @MaxOrderId
         
 select @OldQuestionId = QuestionId from vts_tbQuestion where DisplayOrder = @NewDisplayOrder and LibraryID = @LibId
 
 update vts_tbQuestion set DisplayOrder = @NewDisplayOrder 
	where QuestionId = @QuestionId 
 
 update vts_tbQuestion set DisplayOrder = @CurrentDisplayOrder 
	where QuestionId = @OldQuestionId 
  
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionResetDisplayOrder]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[vts_spQuestionResetDisplayOrder] @SurveyId int AS

DECLARE 	@DisplayOrder int,
		@QuestionId int

SET @DisplayOrder = 1

DECLARE QuestionsToUpdate CURSOR FOR
SELECT QuestionID FROM vts_tbQuestion 
WHERE SurveyID = @SurveyId AND ParentQuestionID is null ORDER BY PageNumber ASC, QuestionId 

OPEN QuestionsToUpdate

FETCH NEXT FROM QuestionsToUpdate into @QuestionId

WHILE @@FETCH_STATUS = 0
BEGIN
	UPDATE vts_tbQuestion SET DisplayOrder = @DisplayOrder WHERE QuestionID = @QuestionId
	UPDATE vts_tbQuestion SET DisplayOrder = @DisplayOrder WHERE ParentQuestionID = @QuestionId
	
	SET @DisplayOrder = @DisplayOrder + 1
	FETCH NEXT FROM QuestionsToUpdate into @QuestionId
END

CLOSE QuestionsToUpdate
DEALLOCATE QuestionsToUpdate


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsAnswersGetForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all questions with their answers
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey from
/// </param>
/// <returns>
/// A multiple resultset of questions and answers
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsAnswersGetForSurvey] @SurveyID int
AS
SELECT 
	QuestionID,
	ParentQuestionID,
	SurveyId,
	QuestionText, 
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RatingEnabled
	TypeNameSpace,
	TypeAssembly
FROM vts_tbQuestion
INNER JOIN vts_tbQuestionSelectionMode 
	ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
WHERE 
	SurveyID=@SurveyId 
ORDER BY DisplayOrder ASC
SELECT 
	AnswerID,
	vts_tbAnswer.AnswerTypeID,
	vts_tbQuestion.QuestionId,
	AnswerText,
	ImageURL, 
	(SELECT count(*) FROM vts_tbVoterAnswers INNER JOIN vts_tbVoter ON vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID WHERE  vts_tbVoter.Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID) as VoteCount,
	FieldWidth,
	FieldHeight,
	FieldLength,
	TypeMode,
	XMLDatasource,
	DataSource,
	JavascriptCode,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	RatePart,
	ScorePoint,
	DefaultText,
	AnswerPipeAlias,
	Mandatory,
	RegExpression,
	RegExMessage,
	vts_tbAnswer.RegularExpressionId
FROM vts_tbAnswer
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
INNER JOIN vts_tbQuestion
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
LEFT JOIN vts_tbRegularExpression
	ON vts_tbAnswer.RegularExpressionId = vts_tbRegularExpression.RegularExpressionId
WHERE SurveyID = @SurveyID
ORDER BY vts_tbAnswer.DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// adds a new grid answer
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerAddNew]
			@QuestionID int,
			@AnswerID int
			
AS

SELECT AnswerID FROM vts_tbQuestionSectionGridAnswer WHERE QuestionId = @QuestionID AND AnswerId = @AnswerID

IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbQuestionSectionGridAnswer(QuestionID, AnswerID) VALUES (@QuestionID, @AnswerID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete a grid answer
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerDelete]
			@QuestionID int,
			@AnswerID int
			
AS

DELETE FROM vts_tbQuestionSectionGridAnswer WHERE QuestionId = @QuestionID AND AnswerId = @AnswerID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionGridAnswerGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// returns all answers to be shown in the section grid
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionGridAnswerGet]
			@QuestionID int
			
AS

SELECT AnswerId FROM vts_tbQuestionSectionGridAnswer WHERE QuestionId = @QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionClone]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionOptionClone]
	@QuestionID int,
	@ClonedQuestionId int  
AS

BEGIN TRAN CloneSections

-- Clone the options
INSERT INTO vts_tbQuestionSectionOption
	(QuestionID,
	RepeatableSectionModeId,
	AddSectionLinkText,
	DeleteSectionLinkText,
	MaxSections,
	UpdateSectionLinktext,
	EditSectionLinkText)
SELECT      
	@ClonedQuestionID, 
	RepeatableSectionModeId,
	AddSectionLinkText,
	DeleteSectionLinkText,
	MaxSections,
	UpdateSectionLinktext,
	EditSectionLinkText
FROM vts_tbQuestionSectionOption WHERE QuestionID = @QuestionID

INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
	SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
	FROM vts_tbMultiLanguageText
	WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 6

INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
	SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
	FROM vts_tbMultiLanguageText
	WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 7

INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
	SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
	FROM vts_tbMultiLanguageText
	WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 8

INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
	SELECT @ClonedQuestionID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
	FROM vts_tbMultiLanguageText
	WHERE LanguageItemID = @QuestionID AND LanguageMessageTypeID = 9

IF Exists(select answerid from vts_tbQuestionSectionGridAnswer where questionid = @QuestionID)
BEGIN
	-- Clone answers to be shown in grid section mode
	INSERT INTO vts_tbQuestionSectionGridAnswer
		(AnswerId,
		QuestionId)
	SELECT      
		AnswerId = 
		(select answerid from vts_tbAnswer WHERE QuestionId = @ClonedQuestionId AND 
			DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = A.AnswerID)),
		@ClonedQuestionId 
	FROM vts_tbQuestionSectionGridAnswer
	INNER JOIN vts_tbAnswer A
		ON vts_tbQuestionSectionGridAnswer.AnswerID = A.AnswerId
	WHERE vts_tbQuestionSectionGridAnswer.QuestionID = @QuestionID AND vts_tbQuestionSectionGridAnswer.AnswerId is not null
END

COMMIT TRAN CloneSections


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// deletes  the section options for questions
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionOptionDelete] @QuestionId int  AS

-- Delete multi language texts
DELETE FROM vts_tbMultiLanguageText WHERE LanguageItemID = @QuestionID AND 
	(LanguageMessageTypeID = 6 OR LanguageMessageTypeID = 7 OR LanguageMessageTypeID = 8 OR LanguageMessageTypeID = 9)

DELETE FROM vts_tbQuestionSectionGridAnswer WHERE QuestionID = @QuestionID

DELETE FROM vts_tbQuestionSectionOption
WHERE QuestionID = @QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the section options for questions
/// </summary>
/// <param name="@QuestionID">
/// ID of the question to retrieve section options from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionOptionGetDetails] @QuestionId int, @LanguageCode nvarchar(50)  AS
SELECT 
	QuestionID,
	RepeatableSectionModeId,
	AddSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			AddSectionLinkText 
		WHEN '' THEN
			AddSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 6 AND
			LanguageCode = @LanguageCode), AddSectionLinkText)	
		END,
	DeleteSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			DeleteSectionLinkText 
		WHEN '' THEN
			DeleteSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 7 AND
			LanguageCode = @LanguageCode), DeleteSectionLinkText)	
		END,

	EditSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			EditSectionLinkText 
		WHEN '' THEN
			EditSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 9 AND
			LanguageCode = @LanguageCode), EditSectionLinkText)	
		END,
	UpdateSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			UpdateSectionLinkText 
		WHEN '' THEN
			UpdateSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 8 AND
			LanguageCode = @LanguageCode), UpdateSectionLinkText)
		END,
	MaxSections
FROM vts_tbQuestionSectionOption
WHERE QuestionID = @QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSectionOptionUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the section options for questions
/// </summary>
/// <param name="@QuestionID">
/// ID of the question to retrieve section options from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSectionOptionUpdate] 
						@QuestionId int, 
						@RepeatableSectionmodeId int = 0,
						@AddSectionLinkText nvarchar(255),
						@DeleteSectionLinkText nvarchar(255),
						@EditSectionLinkText nvarchar(255),
						@UpdateSectionLinkText nvarchar(255),
						@MaxSections int,
						@LanguageCode nvarchar(50)


AS
UPDATE vts_tbQuestionSectionOption SET 
	RepeatableSectionModeId = @RepeatableSectionModeId,
	MaxSections = @MaxSections
WHERE QuestionID = @QuestionID

-- creates new options
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbQuestionSectionOption (QuestionId, RepeatableSectionModeId, MaxSections)
	VALUES (@QuestionId, @RepeatableSectionModeId, @MaxSections)
END

-- Updates text
IF @LanguageCode is null OR @LanguageCode='' 
BEGIN
	UPDATE vts_tbQuestionSectionOption
	SET 	
		AddSectionLinkText = @AddSectionLinkText,
		DeleteSectionLinkText = @DeleteSectionLinkText, 
		EditSectionLinkText = @EditSectionLinkText,
		UpdateSectionLinkText = @UpdateSectionLinkText
	WHERE
		QuestionID = @QuestionID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 6, @AddSectionLinkText
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 7, @DeleteSectionLinkText
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 8, @UpdateSectionLinkText
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 9, @EditSectionLinkText
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSelectionModeGetForSingle]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spQuestionSelectionModeGetForSingle] AS
SELECT * FROM vts_tbQuestionSelectionMode


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSelectionModeGetSelectable]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spQuestionSelectionModeGetSelectable] AS
SELECT * FROM vts_tbQuestionSelectionMode WHERE TypeMode & 1 = 1


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetForLibrary]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the questions until next page break
/// </summary>
/// <param name="@LibraryID">
/// ID of the library  to retrieve questions from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetForLibrary]
			@LibraryId int,@LanguageCode Nvarchar(50)
AS
	SELECT 
	vts_tbQuestion.QuestionID,
	SurveyId,
	LibraryId,
	QuestionText = 
		CASE @LanguageCode 
		WHEN null THEN
			QuestionText 
		WHEN '' THEN
			QuestionText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 3 AND
			LanguageCode = @LanguageCode), QuestionText)		
		END,
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	PageNumber,
	ColumnsNumber,
	QuestionPipeAlias,
	(ISNULL(RepeatableSectionModeId, 0)) AS RepeatableSectionModeId,
	AddSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			AddSectionLinkText 
		WHEN '' THEN
			AddSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 6 AND
			LanguageCode = @LanguageCode), AddSectionLinkText)	
		END,
	DeleteSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			DeleteSectionLinkText 
		WHEN '' THEN
			DeleteSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 7 AND
			LanguageCode = @LanguageCode), DeleteSectionLinkText)	
		END,

	EditSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			EditSectionLinkText 
		WHEN '' THEN
			EditSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 9 AND
			LanguageCode = @LanguageCode), EditSectionLinkText)	
		END,
	UpdateSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			UpdateSectionLinkText 
		WHEN '' THEN
			UpdateSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 8 AND
			LanguageCode = @LanguageCode), UpdateSectionLinkText)
		END,
		HelpText = 
		CASE @LanguageCode 
		WHEN null THEN
			HelpText 
		WHEN '' THEN
			HelpText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 11 AND
			LanguageCode = @LanguageCode), HelpText)		
		END,
	ShowHelpText,
	Alias= 
		CASE @LanguageCode 
		WHEN null THEN
			Alias 
		WHEN '' THEN
			Alias
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 12 AND
			LanguageCode = @LanguageCode), Alias)		
		END,
	(ISNULL(MaxSections, 0)) as MaxSections, 
	QuestionIdText
	FROM vts_tbQuestion
	LEFT JOIN vts_tbQuestionSectionOption
		ON vts_tbQuestionSectionOption.QuestionID = vts_tbQuestion.QuestionID
	INNER JOIN vts_tbQuestionSelectionMode 
		ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
	WHERE 
		LibraryID=@LibraryId AND ParentQuestionID is null
	ORDER BY vts_tbQuestion.DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all questions for a survey
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetForSurvey] @SurveyId int, @LanguageCode nvarchar(50)  AS
SELECT 
	vts_tbQuestion.QuestionID,
	SurveyId,
	LibraryId,
	QuestionText = 
		CASE @LanguageCode 
		WHEN null THEN
			QuestionText 
		WHEN '' THEN
			QuestionText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 3 AND
			LanguageCode = @LanguageCode), QuestionText)		
		END,
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	PageNumber,
	ColumnsNumber,
	QuestionPipeAlias,
	(ISNULL(RepeatableSectionModeId, 0)) AS RepeatableSectionModeId,
	AddSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			AddSectionLinkText 
		WHEN '' THEN
			AddSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 6 AND
			LanguageCode = @LanguageCode), AddSectionLinkText)	
		END,
	DeleteSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			DeleteSectionLinkText 
		WHEN '' THEN
			DeleteSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 7 AND
			LanguageCode = @LanguageCode), DeleteSectionLinkText)	
		END,

	EditSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			EditSectionLinkText 
		WHEN '' THEN
			EditSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 9 AND
			LanguageCode = @LanguageCode), EditSectionLinkText)	
		END,
	UpdateSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			UpdateSectionLinkText 
		WHEN '' THEN
			UpdateSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 8 AND
			LanguageCode = @LanguageCode), UpdateSectionLinkText)
		END,
	(ISNULL(MaxSections, 0)) as MaxSections, 
	QuestionIdText,
	Alias = 
		CASE @LanguageCode 
		WHEN null THEN
			Alias 
		WHEN '' THEN
			Alias
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 12 AND
			LanguageCode = @LanguageCode), Alias)
		END,
		HelpText = 
		CASE @LanguageCode 
		WHEN null THEN
			HelpText 
		WHEN '' THEN
			HelpText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 11 AND
			LanguageCode = @LanguageCode), HelpText)
		END,
		ShowHelpText
FROM vts_tbQuestion
LEFT JOIN vts_tbQuestionSectionOption
		ON vts_tbQuestionSectionOption.QuestionID = vts_tbQuestion.QuestionID
INNER JOIN vts_tbQuestionSelectionMode 
	ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
WHERE 
	SurveyID=@SurveyId AND
	ParentQuestionID is null
ORDER BY PageNumber, DisplayOrder ASC


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetListForLibrary]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question templates that are available in the given library
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetListForLibrary] @LibraryID int  AS

SELECT 
QuestionID,
 QuestionText,
 HelpText,
 questionIdText
FROM vts_tbQuestion 
WHERE 
	LibraryID = @LibraryID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetListForLibraryWithoutChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all question templates that are available in the given library
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetListForLibraryWithoutChilds] @LibraryID int  AS

SELECT QuestionID, QuestionText
FROM vts_tbQuestion 
WHERE 
	LibraryID = @LibraryID AND 
	ParentQuestionID is null


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetMatrixChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all child questions for a matrix questionl
/// </summary>
/// <param name="@QuestionID">
/// ID of the question to retrieve child questions from
/// </param>
/// <returns>
/// A multiple resultset of questions and answers
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetMatrixChilds] @ParentQuestionId int, @LanguageCode nvarchar(50)  AS
SELECT
	SurveyID,
	QuestionID, 
	QuestionText = 
		CASE @LanguageCode 
		WHEN null THEN
			QuestionText 
		WHEN '' THEN
			QuestionText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 3 AND
			LanguageCode = @LanguageCode), QuestionText)		
		END,
	SelectionModeId,
	LayoutModeId,
	DisplayOrder,
	QuestionPipeAlias
FROM vts_tbQuestion
WHERE 
	ParentQuestionID=@ParentQuestionID
ORDER BY DisplayOrder
SELECT 
	AnswerID,
	vts_tbAnswer.QuestionId,
	AnswerText = 
		CASE @LanguageCode
		WHEN null THEN
			AnswerText 
		WHEN '' THEN
			AnswerText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 1 AND
			LanguageCode = @LanguageCode), AnswerText)		
		END,
	ImageUrl,
	(SELECT count(*) FROM vts_tbVoterAnswers WHERE AnswerID = vts_tbAnswer.AnswerID) as VoteCount,
	FieldWidth,
	FieldHeight,
	FieldLength,
	TypeMode,
	XMLDatasource,
	DataSource,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,	
	JavascriptCode,
	JavascriptFunctionName,
	JavascriptErrorMessage,
	Selected,
	DefaultText = 
		CASE @LanguageCode 
		WHEN null THEN
			DefaultText 
		WHEN '' THEN
			DefaultText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbAnswer.AnswerID AND
			LanguageMessageTypeId = 2 AND
			LanguageCode = @LanguageCode), null)		
		END,
	Mandatory
FROM vts_tbAnswer
INNER JOIN vts_tbQuestion 
	ON vts_tbAnswer.QuestionID = vts_tbQuestion.QuestionID
INNER JOIN vts_tbAnswerType 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
WHERE 
	vts_tbQuestion.ParentQuestionID = @ParentQuestionID
ORDER BY AnswerID;


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetPagedForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the questions until next page break
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <param name="@LastDisplayOrder">
/// Question at which we whish to stop
/// </param>
/// <returns>
/// 	QuestionID, 
/// 	QuestionText, 
/// 	QuestionLayoutId,
///	LayoutModeId,
///	DisplayOrder
///	TypeNameSpace,
///	TypeAssembly
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetPagedForSurvey]
			@SurveyId int,
			@PageNumber  int = 1,
			@LanguageCode nvarchar(50)
AS
	SELECT 
		vts_tbQuestion.QuestionID,
		SurveyId,
		LibraryID,
		QuestionText = 
		CASE @LanguageCode 
		WHEN null THEN
			QuestionText 
		WHEN '' THEN
			QuestionText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 3 AND
			LanguageCode = @LanguageCode), QuestionText)		
		END,
		vts_tbQuestion.SelectionModeId,
		LayoutModeId,
		DisplayOrder,
		MinSelectionRequired,
		MaxSelectionAllowed,
		RandomizeAnswers,
		TypeNameSpace,
		TypeAssembly,
		TypeMode,
		ColumnsNumber,
		QuestionPipeAlias,
		(ISNULL(RepeatableSectionModeId, 0)) as RepeatableSectionModeId,
	AddSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			AddSectionLinkText 
		WHEN '' THEN
			AddSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 6 AND
			LanguageCode = @LanguageCode), AddSectionLinkText)	
		END,
	DeleteSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			DeleteSectionLinkText 
		WHEN '' THEN
			DeleteSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 7 AND
			LanguageCode = @LanguageCode), DeleteSectionLinkText)	
		END,

	EditSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			EditSectionLinkText 
		WHEN '' THEN
			EditSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 9 AND
			LanguageCode = @LanguageCode), EditSectionLinkText)	
		END,
	UpdateSectionLinkText = 
		CASE @LanguageCode 
		WHEN null THEN
			UpdateSectionLinkText 
		WHEN '' THEN
			UpdateSectionLinkText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestionSectionOption.QuestionID AND
			LanguageMessageTypeId = 8 AND
			LanguageCode = @LanguageCode), UpdateSectionLinkText)
		END,
		(ISNULL(MaxSections, 0)) as MaxSections,
		HelpText = 
		CASE @LanguageCode 
		WHEN null THEN
			HelpText 
		WHEN '' THEN
			HelpText 
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = vts_tbQuestion.QuestionID AND
			LanguageMessageTypeId = 11 AND
			LanguageCode = @LanguageCode), HelpText)
		END,
		ShowHelpText
	FROM vts_tbQuestion
	LEFT JOIN vts_tbQuestionSectionOption
		ON vts_tbQuestionSectionOption.QuestionID = vts_tbQuestion.QuestionID
	INNER JOIN vts_tbQuestionSelectionMode 
		ON vts_tbQuestionSelectionMode.QuestionSelectionModeID = vts_tbQuestion.SelectionModeID
	WHERE 
		SurveyID=@SurveyId AND
		PageNumber = @PageNumber AND
		ParentQuestionID is null
	ORDER BY DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionsGetPageRangeForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all questions in the given page range for a survey
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionsGetPageRangeForSurvey] 
			@SurveyId int,
			@StartPage int,
			@EndPage int
AS

SELECT 
	QuestionID,
	QuestionText 
FROM vts_tbQuestion
WHERE 
	SurveyID=@SurveyId AND PageNumber BETWEEN @StartPage AND @EndPage


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSingleAnswerableListWithoutChilds]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all parent questions that can have any type of answers, except those that have child questions 
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey  to retrieve questions
/// </param>
/// <returns>
///	QuestionID,
///	SurveyID
///	QuestionText, 
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSingleAnswerableListWithoutChilds] @SurveyId int  AS
SELECT DISTINCT Q.QuestionID, Q.QuestionText, Q.DisplayOrder 
FROM vts_tbQuestion Q
INNER JOIN vts_tbQuestionSelectionMode
	ON  QuestionSelectionModeID= Q.SelectionModeID
WHERE 
	SurveyID = @SurveyId AND 
	TypeMode & 4 > 1 AND 
	ParentQuestionID is null
	AND QuestionID NOT IN (SELECT ParentQuestionID FROM vts_tbQuestion WHERE ParentQuestionID = Q.QuestionID)
ORDER BY Q.DisplayOrder, Q.QuestionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new skip rule to the question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleAddNew] 	
			@SkipQuestionID int,
			@QuestionID int,
			@AnswerID int,
			@TextFilter nvarchar(4000),
			@ConditionalOperator int,
			@ExpressionOperator int,
			@Score	int,
			@ScoreMax int,
			@SkipLogicRuleID int OUTPUT
AS
INSERT INTO vts_tbSkipLogicRule
	(SkipQuestionID,
	QuestionID,
	AnswerID,
	ConditionalOperator,
	ExpressionOperator,
	TextFilter,
	Score,
	ScoreMax)
VALUES
	(@SkipQuestionID,
	@QuestionID,
	@AnswerID,
	@ConditionalOperator,
	@ExpressionOperator,
	@TextFilter,
	@Score,
	@ScoreMax)
set @SkipLogicRuleID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleDeleteById]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the given rule
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleDeleteById] @SkipLogicRuleID int AS
DELETE FROM vts_tbSkipLogicRule WHERE SkipLogicRuleID = @SkipLogicRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionSkipLogicRuleGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve all skip rules for the given question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionSkipLogicRuleGetAll] @SkipQuestionID int AS

SELECT vts_tbSkipLogicRule.*,  AnswerText, QuestionText
FROM vts_tbSkipLogicRule 
INNER JOIN vts_tbQuestion 	
	ON vts_tbQuestion.QuestionID = vts_tbSkipLogicRule.QuestionID
LEFT JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerID = vts_tbSkipLogicRule.AnswerID
WHERE SkipQuestionID  = @SkipQuestionID
ORDER BY SkipLogicRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spQuestionUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates a question
/// </summary>
/// <param name="QuestionID">
/// ID of the question to update
/// </param>
/// <param name="@QuestionText">
/// Question's text
/// </param>
/// <param name="@SelectionModeID">
/// selection type of the question (checkbox, radio, matrix ..)
/// </param>
/// <param name="@LayoutModeID">
/// Layout of the question (horizontal, vertical ..)
/// </param>
/// <param name="@MinSelectionRequired">
/// Number of selection that question requires
/// </param>
/// <param name="@MaxSelectionRequired">
/// Number of max selection that question allows
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spQuestionUpdate] 
			@QuestionID int, 
			@QuestionText nvarchar(4000),
			@SelectionModeId int,
			@LayoutModeId int,
			@ColumnsNumber int,
			@MinSelectionRequired int,
			@MaxSelectionAllowed int,
			@RandomizeAnswers bit,
			@RatingEnabled bit,
			@QuestionPipeAlias nvarchar(255),
			@LanguageCode nvarchar(50) = null,
			@QuestionGroupId int, 
			@ShowHelpText	bit,
			@HelpText	nvarchar(4000),
			@Alias	nvarchar(255),
			@QuestionIdText nvarchar(255)
AS
BEGIN TRAN UpdateQuestion

UPDATE vts_tbQuestion  
SET 	SelectionModeId=@SelectionModeId,
	LayoutModeId = @LayoutModeId,
	MinSelectionRequired = @MinSelectionRequired,
	MaxSelectionAllowed = @MaxSelectionAllowed,
	RandomizeAnswers = @RandomizeAnswers,
	RatingEnabled = @RatingEnabled,
	ColumnsNumber = @ColumnsNumber,
	QuestionPipeAlias = @QuestionPipeAlias,
	QuestionGroupId =case when  @QuestionGroupId=-1 then null else @QuestionGroupId end,
	ShowHelpText = @ShowHelpText,
	QuestionIDText=@QuestionIDText
WHERE
	QuestionID = @QuestionID

-- Updates Child question's options
UPDATE vts_tbQuestion  
SET 	SelectionModeId=@SelectionModeId,
	LayoutModeId = @LayoutModeId,
	MinSelectionRequired = @MinSelectionRequired,
	MaxSelectionAllowed = @MaxSelectionAllowed,
	RandomizeAnswers = @RandomizeAnswers,
	RatingEnabled = @RatingEnabled
WHERE
	ParentQuestionID = @QuestionID

-- Updates text
IF @LanguageCode is null OR @LanguageCode='' 
BEGIN
	UPDATE vts_tbQuestion
	SET 	QuestionText = @QuestionText,
		    HelpText =     @HelpText,
	        Alias =        @Alias
	WHERE
		QuestionID = @QuestionID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 3, @QuestionText
    exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 11, @HelpText
	exec vts_spMultiLanguageTextUpdate @QuestionID, @LanguageCode, 12, @Alias
	
END

COMMIT TRAN UpdateQuestion


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new regular expression
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionAddNew]
			@UserID int,
			@Description varchar(255) = null,
			@RegExpression varchar(2000) = null, 
			@RegExMessage varchar(2000) = null,
			@RegularExpressionID int OUTPUT
AS

SELECT 
	@RegularExpressionID = RegularExpressionID
FROM vts_tbRegularExpression
WHERE
	RegExpression = @RegExpression AND
	Description = @Description

if @@rowcount = 0
BEGIN
	INSERT INTO vts_tbRegularExpression
		(Description,
		RegExpression, 
		RegExMessage)
	VALUES
		(@Description,
		@RegExpression, 
		@RegExMessage)

	set @RegularExpressionID = scope_identity()
	IF @UserId > 0
	BEGIN
		exec vts_spUserRegularExpressionAssignUser @RegularExpressionID, @UserId
	END
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the given regex
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionDelete] @RegularExpressionID int AS
DELETE FROM vts_tbRegularExpression WHERE RegularExpressionID = @RegularExpressionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves all the infos of the given regular expression  id
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionGetDetails] @RegularExpressionID int AS
SELECT 
	RegularExpressionID,
	Description, 
	RegExMessage,
	RegExpression,
	BuiltIn
 FROM vts_tbRegularExpression 
 WHERE RegularExpressionID = @RegularExpressionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetEditableListForUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionGetEditableListForUser] @UserId int AS
SELECT 
	vts_tbRegularExpression.RegularExpressionID,
	vts_tbRegularExpression.Description
 FROM vts_tbRegularExpression 
INNER JOIN vts_tbUserRegularExpression
	ON vts_tbUserRegularExpression.RegularExpressionID = vts_tbRegularExpression.RegularExpressionID
WHERE vts_tbUserRegularExpression.UserID = @UserID
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionGetList] AS
SELECT 
	RegularExpressionID,
	Description
 FROM vts_tbRegularExpression 
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionGetListForUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionGetListForUser] @UserId int, @SurveyId int
AS

SELECT 
	DISTINCT vts_tbRegularExpression.RegularExpressionID,
	vts_tbRegularExpression.Description
FROM vts_tbRegularExpression 
LEFT JOIN vts_tbUserRegularExpression
	ON vts_tbUserRegularExpression.RegularExpressionID = vts_tbRegularExpression.RegularExpressionID
WHERE vts_tbUserRegularExpression.UserID = @UserId OR 
	BuiltIn<>0 OR 
	vts_tbRegularExpression.RegularExpressionId in 
		(SELECT RegularExpressionId 
		FROM vts_tbAnswer 
		INNER JOIN vts_tbQuestion 
			ON vts_tbAnswer.QuestionId = vts_tbQuestion.QuestionId 
		WHERE SurveyId = @SurveyId)
ORDER BY Description


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionSetBuiltIn]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Set  answer type to be built in
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionSetBuiltIn] @RegularExpressionID int AS

BEGIN TRAN SetBuiltIn

DELETE FROM vts_tbUserRegularExpression WHERE RegularExpressionID = @RegularExpressionID

UPDATE vts_tbRegularExpression SET BuiltIn = 1 WHERE RegularExpressionID = @RegularExpressionID

COMMIT TRAN SetBuiltIn


GO
/****** Object:  StoredProcedure [dbo].[vts_spRegularExpressionUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the regular expression data
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRegularExpressionUpdate]
			@RegularExpressionID int, 
			@Description varchar(255), 
			@RegExpression varchar(2000),
			@RegExMessage nvarchar(2000)		
AS
UPDATE vts_tbRegularExpression SET
	Description = @Description, 
	RegExpression = @RegExpression,
	RegExMessage = @RegExMessage
WHERE RegularExpressionID = @RegularExpressionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spResumeModeGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spResumeModeGetAll] AS
SELECT * FROM vts_tbResumeMode


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// adds a new role
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleAddNew]
			@RoleID int out,
			@RoleName nvarchar(255)
			
AS

INSERT INTO vts_tbRole (RoleName)
VALUES (@RoleName)

SELECT @RoleID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all details of the roles
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleDelete] @RoleID int
AS

DELETE FROM vts_tbRoleSecurityRight WHERE RoleID = @RoleID
DELETE FROM vts_tbUserRole WHERE RoleID = @RoleID
DELETE FROM vts_tbRole WHERE RoleID = @RoleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all details of the roles
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleGetDetails] @RoleID int
AS

SELECT RoleID, RoleName FROM vts_tbRole WHERE RoleID = @RoleID

SELECT SecurityRightId  FROM vts_tbRoleSecurityRight WHERE RoleID = @RoleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleGetList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all roles
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleGetList]
AS

SELECT RoleID, RoleName FROM vts_tbRole


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleSecurityRightAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// adds a new role
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleSecurityRightAddNew]
			@RoleID int,
			@SecurityRightID int
			
AS

SELECT RoleID FROM vts_tbRoleSecurityRight WHERE RoleID = @RoleID AND SecurityRightId = @SecurityRightID

IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbRoleSecurityRight(RoleID, SecurityRightID) VALUES (@RoleID, @SecurityRightID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleSecurityRightDeleteAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all associated security rights of a role
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleSecurityRightDeleteAll] @RoleID int
AS

DELETE FROM vts_tbRoleSecurityRight WHERE RoleID = @RoleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spRoleUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// adds a new role
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spRoleUpdate]
			@RoleID int,
			@RoleName nvarchar(255)
			
AS

UPDATE vts_tbRole SET RoleName = @RoleName WHERE RoleID = @RoleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSecurityRightGetList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get a list of all security rights
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSecurityRightGetList]
AS

SELECT SecurityRightID, Description FROM vts_tbSecurityRight


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAccessPasswordGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyAccessPasswordGet] @SurveyID int AS
SELECT AccessPassword FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAccessPasswordUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyAccessPasswordUpdate] @SurveyID int, @AccessPassword nvarchar(255)
AS
UPDATE vts_tbSurvey  SET AccessPassword = @AccessPassword
WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Creates a new survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyAddNew] 
					@CreationDate datetime,
					@OpenDate datetime,
					@CloseDate datetime,
					@Title nvarchar(255),
					@AccessPassword nvarchar(255) = null,
					@SurveyDisplayTimes int = 0,
					@ResultsDisplayTimes int = 0,
					@Archive bit = 0,
					@Activated bit = 0,
					@CookieExpires int = 1440,
					@IPExpires int = 1440,
					@OnlyInvited bit = 0,
					@ProgressDisplayModeId int = 2,
					@ResumeModeId int = 1,
					@Scored bit = 0,
					@NavigationEnabled bit =0,
					@QuestionNumberingDisabled bit = 0,
					@FolderId int = null,
					@MultiLanguageModeId int=null,		
					@ThankYouMessage nvarchar(4000)=null,			
					@SurveyID int out
AS
	declare @pid int
	-- we get home folder
	select @pid =
	(case when @FolderId is null or @folderid<=0 then FolderId 
	else @folderId end )
	from vts_tbFolders where ParentFolderId IS NULL
	
	if exists(
          select 1 from vts_tbSurvey where FolderId=@pid and Title =@Title )
         begin
           raiserror('DUPLICATEFOLDER',16,4);
           return;
         end;

INSERT INTO vts_tbSurvey(
	CreationDate,
	OpenDate,
	CloseDate,
	Title,
	AccessPassword,
	SurveyDisplayTimes,
	ResultsDisplayTimes,
	Archive,
	IPExpires,
	CookieExpires,
	Activated,
	OnlyInvited,
	ProgressDisplayModeId,
	ResumeModeId,
	Scored,
	NavigationEnabled,
	QuestionNumberingDisabled,
	FolderId,
	MultiLanguageModeId,
	ThankYouMessage) 
VALUES (
	@CreationDate,
	@OpenDate,
	@CloseDate,
	@Title,
	@AccessPassword,
	@SurveyDisplayTimes,
	@ResultsDisplayTimes,
	@Archive,
	@IPExpires,
	@CookieExpires,
	@Activated,
	@OnlyInvited,
	@ProgressDisplayModeId,
	@ResumeModeId,
	@Scored,
	@NavigationEnabled,
	@QuestionNumberingDisabled,
	@pid,
	@MultiLanguageModeId,
	@ThankYouMessage)
	
SET @SurveyID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAllowMultipleASPNetVotes]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyAllowMultipleASPNetVotes] @SurveyID int AS
SELECT AllowMultipleUserNameSubmissions FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyAllowMultipleNSurveyVotes]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyAllowMultipleNSurveyVotes] @SurveyID int AS
SELECT AllowMultipleNSurveySubmissions FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new branching rule to a survey page
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleAddNew] 
			@PageNumber int,
			@ExpressionOperator int,
			@QuestionID int,
			@AnswerID int,
			@TextFilter nvarchar(4000),
			@TargetPageNumber int,
			@ConditionalOperator int,
			@Score	int,
			@ScoreMax int,
			@BranchingRuleID int OUTPUT
AS
INSERT INTO vts_tbBranchingRule
	(PageNumber,
	ExpressionOperator,
	QuestionID,
	AnswerID,
	TargetPageNumber,
	ConditionalOperator,
	TextFilter,
	Score,
	ScoreMax)
VALUES
	(@PageNumber,
	@ExpressionOperator,
	@QuestionID,
	@AnswerID,
	@TargetPageNumber,
	@ConditionalOperator,
	@TextFilter,
	@Score,
	@ScoreMax)
set @BranchingRuleID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleCopyToSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// clone all branchings of a survey to another
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleCopyToSurvey] @SurveyId int, @ClonedSurveyID int AS


DECLARE @ConditionalOperator int,
	@ExpressionOperator int,
	@PageNumber int,
	@TargetPageNumber int,
	@AnswerID int,
	@ClonedAnswerID int,
	@QuestionID int,
	@ClonedQuestionID int,
	@TextFilter varchar(4000),
	@Score int,
	@ScoreMax int


DECLARE BranchingCursor CURSOR FOR
	SELECT 
		ConditionalOperator,
		ExpressionOperator,
		vts_tbBranchingRule.PageNumber,
		TargetPageNumber,
		AnswerID,
		vts_tbBranchingRule.QuestionID,
		TextFilter,
		Score,
		ScoreMax
	FROM vts_tbBranchingRule
	INNER JOIN vts_tbQuestion
		ON vts_tbQuestion.QuestionID = vts_tbBranchingRule.QuestionID
	WHERE SurveyID = @SurveyID


OPEN BranchingCursor
FETCH BranchingCursor INTO 
	@ConditionalOperator,
	@ExpressionOperator,
	@PageNumber,
	@TargetPageNumber,
	@AnswerID,
	@QuestionID,
	@TextFilter,
	@Score,
	@ScoreMax
WHILE @@FETCH_STATUS = 0
BEGIN

	-- Get question id that is in the cloned survey
	SELECT @ClonedQuestionID =	(select QuestionID  from vts_tbQuestion WHERE SurveyID = @ClonedSurveyID AND QuestionText = (select QuestionText FROM vts_tbQuestion WHERE QuestionID = @QuestionID) AND 
				DisplayOrder = (select DisplayOrder FROM vts_tbQuestion WHERE QuestionID = @QuestionID)) 
	
	IF @AnswerID is not NULL
	BEGIN
		-- Get answer id from the cloned survey
		SELECT @ClonedAnswerId = 
				(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionID AND 
				DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = @AnswerID))
	END
	ELSE
	BEGIN
		SET @ClonedAnswerID = null
	END

	INSERT INTO vts_tbBranchingRule(ConditionalOperator, ExpressionOperator, PageNumber, TargetPageNumber, AnswerID, QuestionID, TextFilter, Score, ScoreMax)
	VALUES (@ConditionalOperator, @ExpressionOperator, @PageNumber, @TargetPageNumber, @ClonedAnswerID, @ClonedQuestionID, @TextFilter, @Score, @ScoreMax)

	FETCH BranchingCursor INTO 
		@ConditionalOperator,
		@ExpressionOperator,
		@PageNumber,
		@TargetPageNumber,
		@AnswerID,
		@QuestionID,
		@TextFilter,
		@Score,
		@ScoreMax
END

CLOSE BranchingCursor 
DEALLOCATE BranchingCursor


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleDeleteById]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the given rule
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleDeleteById] @BranchingRuleID int AS
DELETE FROM vts_tbBranchingRule WHERE BranchingRuleID = @BranchingRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve all branching rule for the given survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetAll] @SurveyID int AS
SELECT vts_tbBranchingRule.*,  AnswerText, QuestionText
FROM vts_tbBranchingRule 
INNER JOIN vts_tbQuestion 	
	ON vts_tbQuestion.QuestionID = vts_tbBranchingRule.QuestionID
LEFT JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerID = vts_tbBranchingRule.AnswerID
WHERE vts_tbQuestion.SurveyID = @SurveyID
ORDER BY BranchingRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetDetailsForPage]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve all branching rule for the given survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetDetailsForPage] @SurveyID int, @PageNumber int AS
SELECT vts_tbBranchingRule.*,  AnswerText, QuestionText
FROM vts_tbBranchingRule 
INNER JOIN vts_tbQuestion 	
	ON vts_tbQuestion.QuestionID = vts_tbBranchingRule.QuestionID
LEFT JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerID = vts_tbBranchingRule.AnswerID
WHERE
	vts_tbQuestion.SurveyID = @SurveyID AND 
	vts_tbBranchingRule.PageNumber = @PageNumber
ORDER BY BranchingRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyBranchingRuleGetForPage]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve all branching rule for the given page of the survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyBranchingRuleGetForPage] @SurveyID int, @PageNumber int AS
SELECT * FROM vts_tbBranchingRule 
INNER JOIN vts_tbQuestion
	ON vts_tbQuestion.QuestionID = vts_tbBranchingRule.QuestionID
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbBranchingRule.PageNumber = @PageNumber
ORDER BY BranchingRuleID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyCheckUserAssigned]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the survey is assigned to this user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyCheckUserAssigned] @SurveyID int, @UserID int AS
SELECT SurveyID FROM vts_tbUserSurvey WHERE SurveyID = @SurveyID AND USerID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyClone]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyClone] @SurveyID int 
AS
BEGIN TRANSACTION CloneSurvey
DECLARE @ClonedSurveyId int
-- Clone the survey
INSERT INTO vts_tbSurvey 
	(CreationDate, 
	OpenDate,
	CloseDate,
	Title,
	RedirectionURL,
	ThankYouMessage,
	AccessPassword,
	SurveyDisplayTimes,
	ResultsDisplayTimes,
	Archive,
	Activated,
	IPExpires,
	CookieExpires,
	OnlyInvited,
	NavigationEnabled,
	ProgressDisplayModeId,
	NotificationModeId,
	ResumeModeId,
	Scored,
	AllowMultipleUserNameSubmissions,
	QuestionNumberingDisabled,
	AllowMultipleNSurveySubmissions,
	MultiLanguageModeId,
	MultiLanguageVariable,
	FolderId)
SELECT      
	getdate(), 
	OpenDate,
	CloseDate,
	Title + ' - cloned',
	RedirectionURL,
	ThankYouMessage,
	AccessPassword,
	0,
	0,
	Archive,
	0,
	IPExpires,
	CookieExpires,
	OnlyInvited,
	NavigationEnabled,
	ProgressDisplayModeId,
	NotificationModeId,
	ResumeModeId,
	Scored,
	AllowMultipleUserNameSubmissions,
	QuestionNumberingDisabled,
	AllowMultipleNSurveySubmissions,
	MultiLanguageModeId,
	MultiLanguageVariable,
    FolderId
FROM vts_tbSurvey WHERE SurveyID = @SurveyID
-- Check if the cloned survey was created
IF @@rowCount <> 0
BEGIN
	-- Clone the survey's questions
	set @ClonedSurveyID = Scope_Identity()
	INSERT INTO vts_tbEmailNotificationSettings(SurveyId, EmailFrom, EmailTo, EmailSubject) 
		SELECT @ClonedSurveyID as surveyId,EmailFrom, Emailto, EmailSubject 
		FROM vts_tbEmailNotificationSettings 
		WHERE SurveyID = @SurveyID
	
	INSERT INTO vts_tbSurveyWebSecurity(WebSecurityAddinId, SurveyID, AddInOrder, Disabled)
		SELECT WebSecurityAddinId, @ClonedSurveyID as SurveyID, AddInOrder, Disabled
		FROM vts_tbSurveyWebSecurity
		WHERE SurveyID = @SurveyID
	
	INSERT INTO vts_tbPageOption (SurveyId, PageNumber, RandomizeQuestions, EnableSubmitButton)
		SELECT @ClonedSurveyID as SurveyID, PageNumber, RandomizeQuestions, EnableSubmitButton
		FROM vts_tbPageOption
		WHERE SurveyID = @SurveyID
	
	INSERT INTO vts_tbSurveyLanguage(SurveyId, LanguageCode, DefaultLanguage)
		SELECT @ClonedSurveyID as SurveyId, LanguageCode, DefaultLanguage
		FROM vts_tbSurveyLanguage
		WHERE SurveyID = @SurveyID

	-- Clone multi languages messages
	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @ClonedSurveyID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @SurveyID AND LanguageMessageTypeID = 4

	INSERT INTO vts_tbMultiLanguageText(LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText)
		SELECT @ClonedSurveyID as LanguageItemID, LanguageCode, LanguageMessageTypeID, ItemText
		FROM vts_tbMultiLanguageText
		WHERE LanguageItemID = @SurveyID AND LanguageMessageTypeID = 5

	exec vts_spQuestionCopyToSurvey @SurveyID, @ClonedSurveyID
	exec vts_spSurveyBranchingRuleCopyToSurvey @SurveyID, @ClonedSurveyID
	exec vts_spSurveySkipLogicRuleCopyToSurvey @SurveyID, @ClonedSurveyID
END
COMMIT TRANSACTION CloneQuestion
exec vts_spSurveyGetDetails @ClonedSurveyID, null


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyCookieExpirationUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyCookieExpirationUpdate] @SurveyID int, @CookieExpires int AS
UPDATE vts_tbSurvey SET CookieExpires = @CookieExpires FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyDeleteByID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete a survey
/// </summary>
/// <param name="@iSurveyID">
/// ID of the survey to delete
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyDeleteByID] @SurveyID int AS
BEGIN TRAN DeleteSurvey

-- deletes all multi languages messages available for this survey
EXEC vts_spMultiLanguageTextDeleteForSurvey @SurveyID

DELETE FROM vts_tbFile WHERE FileID IN (
	SELECT FileId FROM vts_tbFile INNER JOIN vts_tbVoterAnswers ON 
		AnswerText like GroupGuid
	INNER JOIN vts_tbVoter ON
		vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
	WHERE vts_tbVoter.SurveyID = @SurveyID)
DELETE FROM vts_tbVoter WHERE SurveyID = @SurveyID
DELETE FROM vts_tbSurveyLayout WHERE SurveyID = @SurveyID
DELETE FROM vts_tbSurveyToken WHERE SurveyId=@SurveyId
DELETE FROM vts_tbSurveyIPrange Where SurveyId=@SurveyId
DELETE FROM vts_tbSurvey WHERE SurveyID = @SurveyID
COMMIT TRAN DeleteSurvey


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyDeletePageBreak]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// deletes the given page break and reorder the pagenumber 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyDeletePageBreak] @SurveyID int, @PageNumber int AS
UPDATE vts_tbQuestion SET PageNumber = PageNumber -1 
WHERE 
	PageNumber>1 AND 
	PageNumber>=@PageNumber AND 
	SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the entry quota allowed for a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyEntryDelete] 	@SurveyId int 


AS
DELETE FROM vts_tbSurveyEntryQuota WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all the entry quota settings 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyEntryQuotaGetDetails]
						@SurveyId int 


AS
SELECT * FROM vts_tbSurveyEntryQuota WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaIncreaseEntry]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the entry quota allowed for a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyEntryQuotaIncreaseEntry] @SurveyId int


AS

UPDATE vts_tbSurveyEntryQuota SET EntryCount = EntryCount + 1 WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaReset]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the entry quota allowed for a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyEntryQuotaReset] @SurveyId int


AS

UPDATE vts_tbSurveyEntryQuota SET EntryCount = 0 WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyEntryQuotaUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the entry quota allowed for a survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyEntryQuotaUpdate] 
						@SurveyId int, 
						@MaxReachedMessage nvarchar(4000),
						@MaxEntries int


AS
UPDATE vts_tbSurveyEntryQuota SET 
	MaxReachedMessage = @MaxReachedMessage,
	MaxEntries = @MaxEntries
WHERE SurveyID = @SurveyID

-- creates a new survey quota 
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbSurveyEntryQuota(SurveyId, MaxReachedMessage, MaxEntries) VALUES (@SurveyID, @MaxReachedMessage, @MaxEntries)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyExists]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given survey exists in the DB
/// </summary>
/// <param name="@Title">
/// Title of the survey to check for
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyExists] @title nvarchar(255) AS
SELECT 
	SurveyID
FROM vts_tbSurvey 
WHERE Title = @title


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetActivated]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get survey  that is currently marked as activated
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetActivated] AS
SELECT
	SurveyID
FROM vts_tbSurvey 
ORDER BY 
	Activated DESC, 
	SurveyID DESC


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetAllDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all surveys available in the database
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetAllDetails] AS
SELECT 
	vts_tbSurvey.SurveyID,
	UnAuthentifiedUserActionID,
	CreationDate,
	Title,
	AccessPassword,
	RedirectionURL, 
	OpenDate,
	CloseDate,
	LastEntryDate,
	(Select count(*) FROM vts_tbVoter WHERE Validated<>0 AND SurveyID = vts_tbSurvey.SurveyID) as VoterNumber,
	(Select max(PageNumber) FROM vts_tbQuestion WHERE SurveyID = vts_tbSurvey.SurveyID) as TotalPageNumber,
	SurveyDisplayTimes,
	ResultsDisplayTimes,
	Archive,
	Activated,
	IPExpires,
	CookieExpires,
	OnlyInvited,
	NavigationEnabled,
	ProgressDisplayModeId,
	NotificationModeId,
	ResumeModeId,
	EmailFrom,
	EmailTo,
	EmailSubject,
	Scored,
	AllowMultipleUserNameSubmissions,
	QuestionNumberingDisabled,
	AllowMultipleNSurveySubmissions,
	MultiLanguageModeId,
	MultiLanguageVariable
FROM vts_tbSurvey
LEFT JOIN vts_tbEmailNotificationSettings 
	ON vts_tbSurvey.SurveyID = vts_tbEmailNotificationSettings.SurveyID
ORDER BY vts_tbSurvey.SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetAssignedListForUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// gets the full list of survey that are assigned to the given user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetAssignedListForUser] @UserID int AS
if exists( select * from vts_tbuserSetting s 
     where s.userid=@UserID AND (s.IsAdmin=1 OR s.GlobalSurveyAccess=1))
select SurveyId,Title,DefaultSurvey
FROM vts_tbSurvey
ELSE
SELECT s.SurveyId, Title ,DefaultSurvey
FROM vts_tbSurvey s
INNER JOIN vts_tbUserSurvey us
	ON s.SurveyID = us.SurveyId
WHERE 
	us.UserID=@UserID
ORDER BY s.SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetCookieExpiration]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetCookieExpiration] @SurveyID int AS
SELECT CookieExpires FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the details of a survey
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to get details of
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetDetails] @SurveyID int, @LanguageCode nvarchar(50)  AS
SELECT 
	vts_tbSurvey.SurveyID,
	UnAuthentifiedUserActionID,
	CreationDate,
	Title,
	AccessPassword,
	RedirectionURL = 
	CASE @LanguageCode 
	WHEN null THEN
		RedirectionURL 
	WHEN '' THEN
		RedirectionURL 
	ELSE
		IsNull((SELECT ItemText FROM 
		vts_tbMultiLanguageText WHERE
		LanguageItemId =vts_tbSurvey.SurveyId AND
		LanguageMessageTypeId = 5 AND
		LanguageCode = @LanguageCode), RedirectionURL)		
	END,
	OpenDate,
	CloseDate,
	LastEntryDate,
	(Select count(*) FROM vts_tbVoter WHERE Validated<>0 AND SurveyID = @SurveyID) as VoterNumber,
	(Select max(PageNumber) FROM vts_tbQuestion WHERE SurveyID = @SurveyID) as TotalPageNumber,
	SurveyDisplayTimes,
	ResultsDisplayTimes,
	Archive,
	Activated,
	IPExpires,
	CookieExpires,
	ThankYouMessage =
	CASE @LanguageCode 
	WHEN null THEN
		ThankYouMessage 
	WHEN '' THEN
		ThankYouMessage 
	ELSE
		IsNull((SELECT ItemText FROM 
		vts_tbMultiLanguageText WHERE
		LanguageItemId =vts_tbSurvey.SurveyId AND
		LanguageMessageTypeId = 4 AND
		LanguageCode = @LanguageCode), ThankYouMessage)		
	END,
	OnlyInvited,
	NavigationEnabled,
	ProgressDisplayModeId,
	NotificationModeId,
	ResumeModeId,
	EmailFrom,
	EmailTo,
	EmailSubject,
	Scored,
	AllowMultipleUserNameSubmissions,
	QuestionNumberingDisabled,
	AllowMultipleNSurveySubmissions,
	MultiLanguageModeId,
	MultiLanguageVariable,
	SurveyGuid,
	FriendlyName,defaultSurvey
FROM vts_tbSurvey 
LEFT JOIN vts_tbEmailNotificationSettings 
	ON vts_tbSurvey.SurveyID = vts_tbEmailNotificationSettings.SurveyID
WHERE vts_tbSurvey.SurveyID = @SurveyId


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetFirstID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieved the first suvey id available in the DB
/// </summary>
/// <returns>
/// 	SurveyId
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetFirstID] AS
SELECT TOP 1 SurveyID FROM vts_tbSurvey 
ORDER BY SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetFirstIDForUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieved the first suvey id available in the DB
/// </summary>
/// <returns>
/// 	SurveyId
/// </returns>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetFirstIDForUser] @UserID int AS
SELECT TOP 1 vts_tbSurvey.SurveyID FROM vts_tbSurvey 
INNER JOIN vts_tbUserSurvey ON vts_tbSurvey.SurveyID = vts_tbUserSurvey.SurveyID
WHERE vts_tbUserSurvey.UserID = @UserID
ORDER BY vts_tbSurvey.SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetForExport]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// returns the full survey form's questions
/// </summary>
*/

CREATE PROCEDURE [dbo].[vts_spSurveyGetForExport]  @SurveyID int AS


SELECT DISTINCT vts_tbAnswerType.* FROM vts_tbAnswerType
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerTypeID = vts_tbAnswerType.AnswerTypeID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID

SELECT DISTINCT vts_tbRegularExpression.* FROM vts_tbRegularExpression
INNER JOIN vts_tbAnswer 
	ON vts_tbAnswer.RegularExpressionID = vts_tbRegularExpression.RegularExpressionID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID

SELECT 
	SurveyID,
	Title,
	RedirectionURL, 
	OpenDate,
	CloseDate,
	ThankYouMessage,
	NavigationEnabled,
	ProgressDisplayModeId,
	ResumeModeId,
	Scored,
	Activated,
	Archive,
	ResultsDisplayTimes,
	SurveyDisplayTimes,
	CreationDate,
	QuestionNumberingDisabled,
	MultiLanguageModeId,
MultiLanguageVariable
FROM vts_tbSurvey WHERE SurveyID = @SurveyID

-- Get main questions and answers
SELECT 
	QuestionID,
	SurveyID,
	ParentQuestionID,
	QuestionText, 
	vts_tbQuestion.SelectionModeId,
	LayoutModeId,
	MinSelectionRequired,
	MaxSelectionAllowed,
	RandomizeAnswers,
	RatingEnabled,
	ColumnsNumber,
	QuestionPipeAlias,
	PageNumber,
	DisplayOrder,
	QuestionIDText,
	HelpText,
	Alias,
	ShowHelpText,
	QuestionId as OldQuestionId,
	QuestionGroupID
FROM vts_tbQuestion 
WHERE SurveyID = @SurveyID AND ParentQuestionID is null

SELECT
	vts_tbAnswer.AnswerID, 
	vts_tbAnswer.QuestionID,
	AnswerText,
	ImageURL,
	DefaultText,
	AnswerPipeAlias,
	vts_tbAnswer.DisplayOrder,
	ScorePoint,
	RatePart,
	Selected,
	AnswerTypeID,
	RegularExpressionId,
	Mandatory,
	AnswerIDText,
	AnswerAlias,
    SliderRange,
	SliderValue,
	SliderMin,
	SliderMax,
	SliderAnimate,
	SliderStep,
    vts_tbAnswer.AnswerID as OldAnswerId
FROM vts_tbAnswer
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbQuestion.ParentQuestionID is null

SELECT 
	PublisherAnswerID,
	SubscriberAnswerID,
	vts_tbAnswer.QuestionId
FROM vts_tbAnswerConnection
INNER JOIN vts_tbAnswer
	ON vts_tbAnswer.AnswerId = PublisherAnswerID
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbQuestion.ParentQuestionID is null

-- Retrieves all child questions and their answers
SELECT 
	ParentQuestionID,
	QuestionText
FROM vts_tbQuestion 
WHERE SurveyID = @SurveyID AND ParentQuestionID is not null

SELECT vts_tbAnswerProperty.AnswerId, Properties
FROM vts_tbAnswerProperty
INNER JOIN vts_tbAnswer
	ON vts_tbAnswerProperty.AnswerID = vts_tbAnswer.AnswerID  
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbQuestion.ParentQuestionID is null


SELECT 
	DeleteSectionLinkText,
	EditSectionLinkText,
	UpdateSectionLinkText,
	AddSectionLinkText,
	vts_tbQuestionSectionOption.QuestionId,
	MaxSections,
	RepeatableSectionModeId
FROM vts_tbQuestionSectionOption
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbQuestionSectionOption.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbQuestion.ParentQuestionID is null


SELECT vts_tbQuestionSectionGridAnswer.QuestionID, AnswerID 
FROM vts_tbQuestionSectionGridAnswer 
INNER JOIN vts_tbQuestion 
	ON vts_tbQuestion.QuestionID = vts_tbQuestionSectionGridAnswer.QuestionID  
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbQuestion.ParentQuestionID is null

SELECT SurveyId,LanguageCode,DefaultLanguage 
FROM  vts_tbSurveyLanguage WHERE surveyId=@SurveyId;

SELECT [LanguageItemId]
      ,[LanguageCode]
      ,[LanguageMessageTypeId]
      ,[ItemText]
  FROM [dbo].[vts_tbMultiLanguageText]
  where( 
   languageMessageTypeId=10 or
  ([LanguageItemId]=@SurveyID and [LanguageMessageTypeId] in(4,5))
  OR( [LanguageItemId] in (SELECT questionid from vts_tbQuestion where SurveyId=@SurveyID) and
  [LanguageMessageTypeId] in(3,11,12))
  OR( [LanguageItemId] in (SELECT answerid from 
  vts_tbQuestion as q inner join 
  vts_tbAnswer as ans on  q.QuestionId=ans.QuestionId where q.SurveyId=@SurveyID ) and
  [LanguageMessageTypeId] in(1,2,13)))
 and len(ItemText) !=0
 or LanguageItemId in(
  --
  SELECT g.ID
   FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE SurveyId=@SurveyID)
  UNION
  SELECT g.ID FROM vts_tbQuestionGroups AS g
  WHERE g.ID IN(
  SELECT g.ParentGroupID FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE SurveyId=@SurveyID)
  )
  
 )
  
  --
  -- Select all required groups and their parent groups
  --
  SELECT g.ID,g.ParentGroupID,g.GroupName,g.DisplayOrder,g.ID OldId
   FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE SurveyId=@SurveyID)
  UNION
  SELECT g.ID,g.ParentGroupID,g.GroupName,g.DisplayOrder ,g.ID OldId FROM vts_tbQuestionGroups AS g
  WHERE g.ID IN(
  SELECT g.ParentGroupID FROM vts_tbQuestionGroups AS g
  WHERE g.ID  IN(
  SELECT q.QuestionGroupID FROM vts_tbQuestion AS  q WHERE SurveyId=@SurveyID)
  )
  


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetLibraryList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all surveys available with only the surveyid and title in the database
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetLibraryList] @LibraryID int AS
SELECT 
	SurveyID,
	Title
FROM vts_tbSurvey
ORDER BY SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all surveys available with only the surveyid and title in the database
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetList] AS
SELECT 
	SurveyID,
	Title
FROM vts_tbSurvey
ORDER BY SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetListByTitle]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
/// <summary>
/// Get all surveys from specified folder with surveyid, title, folderid and parentFolderId in the database
/// </summary>
*/
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyGetListByTitle] 
	@SurveyTitle varchar(200),
	@FolderId int = null,
	@UserID int 
AS
BEGIN
	SET NOCOUNT ON;

/* JJ  If @folderid is null then select from all folders.select @FolderId = FolderId from vts_tbFolders where @FolderId is null and ParentFolderId is null
 * Restrict Surveys by User
 * Recursively get foldera under given folder
*/
    -- Insert statements for procedure here
     with FolderList as (
    select folderid,parentfolderid from
    vts_tbfolders where folderId=@folderId
    union all
    select e.folderid,e.parentfolderid from
    vTs_tbfolders e inner join FolderList as cte on
    e.parentfolderid=cte.folderid 
    )
    SELECT 	sv.SurveyID,
	sv.UnAuthentifiedUserActionID,
	sv.CreationDate,
	sv.Title,
	sv.AccessPassword,
	sv.RedirectionURL, 
	sv.OpenDate,
	sv.CloseDate,
	sv.LastEntryDate,
	(Select count(*) FROM vts_tbVoter WHERE Validated<>0 AND SurveyID = sv.SurveyID) as VoterNumber,
	(Select max(PageNumber) FROM vts_tbQuestion WHERE SurveyID = sv.SurveyID) as TotalPageNumber,
	sv.SurveyDisplayTimes,
	sv.ResultsDisplayTimes,
	sv.Archive,
	sv.Activated,
	sv.IPExpires,
	sv.CookieExpires,
	sv.OnlyInvited,
	sv.NavigationEnabled,
	sv.ProgressDisplayModeId,
	sv.NotificationModeId,
	sv.ResumeModeId,
	em.EmailFrom,
	em.EmailTo,
	em.EmailSubject,
	sv.Scored,
	sv.AllowMultipleUserNameSubmissions,
	sv.QuestionNumberingDisabled,
	sv.AllowMultipleNSurveySubmissions,
	sv.MultiLanguageModeId,
	sv.MultiLanguageVariable
	FROM vts_tbSurvey AS sv
	LEFT JOIN vts_tbEmailNotificationSettings em
	ON sv.SurveyID = em.SurveyID
	WHERE sv.Title like '%' + ISNULL(@SurveyTitle, '') + '%'
	and( sv.FolderId in (select folderid from folderlist) or @FolderId is null)
	AND (exists(
	    select 1 from vts_tbUserSurvey as usr
	    where usr.surveyId=sv.surveyId and usr.UserId=@UserId )
	    or exists (
	    select 1 from vts_tbUserSetting st
	    where st.userid=@userid
	    and (st.Isadmin=1 or st.GlobalSurveyAccess=1)
	    )
	    )
	
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetPagesNumber]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetPagesNumber] @SurveyID int
AS
Select max(PageNumber) As TotalPages FROM vts_tbQuestion WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetPipeDataFromQuestionId]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get all pipe informations for the survey needed to handle 
/// answer / question piping
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetPipeDataFromQuestionId] @QuestionId int  AS

DECLARE @SurveyId int 

SELECT @SurveyID = SurveyId FROM vts_tbQuestion WHERE QuestionID = @QuestionID

SELECT
	QuestionID, 
	QuestionPipeAlias
FROM vts_tbQuestion
WHERE 
	SurveyId = @SurveyId AND 
	QuestionPipeAlias<>'' AND 
	QuestionPipeAlias is not null

SELECT 
	AnswerID,
	AnswerText,
	vts_tbAnswer.QuestionId,
	AnswerPipeAlias
FROM vts_tbAnswer
INNER JOIN vts_tbQuestion 
	ON vts_tbAnswer.QuestionID = vts_tbQuestion.QuestionID
WHERE 
	vts_tbQuestion.SurveyID = @SurveyId


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetSurveyIdFromFriendlyName]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetSurveyIdFromFriendlyName]
 @FriendlyName as varchar(200)
AS
Select max(surveyId) As SurveyId FROM vts_tbSurvey WHERE FriendlyName = @FriendlyName


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetSurveyIdFromGuid]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetSurveyIdFromGuid] @SurveyGuID uniqueidentifier
AS
Select max(surveyId) As SurveyId FROM vts_tbSurvey WHERE SurveyGuID = @SurveyGuID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetUnAssignedListForUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// gets the full list of survey that aren't assigned to the given user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetUnAssignedListForUser] @UserID int AS

SELECT s.SurveyId, Title 
FROM vts_tbSurvey s
WHERE SurveyID not in (select SurveyId from vts_tbUserSurvey where UserID = @UserId)
ORDER BY s.SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyGetUnAuthentifiedUserAction]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Gets the unauthenticated action
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyGetUnAuthentifiedUserAction] @SurveyId int
AS
	SELECT UnAuthentifiedUserActionID FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyHasPageBranching]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given page of the survey has branching rules associated with it
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyHasPageBranching] @SurveyID int, @PageNumber int 
AS

SELECT top 1 vts_tbBranchingRule.BranchingRuleID FROM vts_tbBranchingRule 
INNER JOIN vts_tbQuestion
	ON vts_tbQuestion.QuestionID = vts_tbBranchingRule.QuestionID
WHERE vts_tbQuestion.SurveyID = @SurveyID AND vts_tbBranchingRule.PageNumber = @PageNumber


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIncrementResultsViews]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Increments the number of times a survey's results has been displayed
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey that will increment its results view count
/// </param>
/// <param name="@countnumber">
/// Increment number
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyIncrementResultsViews]
					@SurveyID int, 
					@countnumber int
AS
UPDATE vts_tbSurvey
SET ResultsDisplayTimes = ResultsDisplayTimes+@countnumber
WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIncrementViews]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Increments the number of times a survey has been displayed
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey that will increment its view count
/// </param>
/// <param name="@CountNumber">
/// Increment number
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyIncrementViews]
					@surveyId int, 
					@countnumber int			
AS
UPDATE vts_tbSurvey
SET SurveyDisplayTimes = SurveyDisplayTimes+@countnumber
WHERE surveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyInsertPageBreak]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Insert a page break at the given position and updates 
/// the pagenumber to match the new break position
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyInsertPageBreak] @SurveyID int, @DisplayOrder int AS
-- Update the question page order
UPDATE vts_tbQuestion SET PageNumber = PageNumber + 1 
WHERE 
	SurveyID = @SurveyID AND
	DisplayOrder >= @DisplayOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPExpirationGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyIPExpirationGet] @SurveyID int AS
SELECT IPExpires FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPExpirationUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyIPExpirationUpdate] @SurveyID int, @IPExpires int AS
UPDATE vts_tbSurvey SET IPExpires = @IPExpires FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyIPRangeAddNew]	
	@SurveyId int,
	@IPStart varchar(100),
	@IPEnd  varchar(100)
AS
BEGIN
INSERT INTO vts_tbSurveyIPRange
(SurveyId,IPStart,IPEnd)
VALUES (@SurveyId,@IPStart,@IPEnd);
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyIPRangeDelete]	
	@SurveyIPRangeId int
AS
BEGIN
DELETE FROM  vts_tbSurveyIPRange
WHERE surveyIPrangeID=@SurveyIPrangeID;
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIPRangeUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyIPRangeUpdate]	
    @SurveyIPrangeID int,
	@SurveyId int,
	@IPStart varchar(100),
	@IPEnd  varchar(100)
AS
BEGIN
UPDATE vts_tbSurveyIPRange
 SET IPStart=@IPStart,
     IPEnd=@IPEnd
 WHERE SurveyIPRangeID=@SurveyIPrangeId
 AND   SurveyId=@SurveyId
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyIsScored]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyIsScored] @SurveyID int 
AS
SELECT Scored FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyLayoutGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Gets the settings of the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyLayoutGet] (@SurveyID  int,@LanguageCode as nvarchar(30))
 AS

SELECT [SurveyId]
      ,[SurveyHeaderText]=
		CASE @LanguageCode 
		WHEN null THEN
			[SurveyHeaderText]
		WHEN '' THEN
			[SurveyHeaderText]
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = @SurveyID AND
			LanguageMessageTypeId = 14 AND
			LanguageCode = @LanguageCode), [SurveyHeaderText])		
		END
      ,[SurveyFooterText]=
      CASE @LanguageCode 
		WHEN null THEN
			[SurveyFooterText]
		WHEN '' THEN
			[SurveyFooterText]
		ELSE
			IsNull((SELECT ItemText FROM 
			vts_tbMultiLanguageText WHERE
			LanguageItemId = @SurveyID AND
			LanguageMessageTypeId = 15 AND
			LanguageCode = @LanguageCode), [SurveyFooterText])		
		END
      ,[SurveyCss]
FROM vts_tbSurveyLayout
WHERE SurveyID = @SurveyID



GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyLayoutUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/*
JJ Created Moving Layout data from User to Survey
    Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)    

    NSurvey - The web survey and form engine
    Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyLayoutUpdate]
@SurveyId int =null,
            @SurveyHeaderText nvarchar(max) = null,
            @SurveyFooterText nvarchar(max) = null,
            @SurveyCss nvarchar(255) = null,
            @LanguageCode nvarchar(30)=null
            
AS

begin transaction
UPDATE vts_tbsurveylayout
     SET 
     SurveyCss=@surveycss
     WHERE surveyId=@surveyId;
IF(@@ROWCOUNT>0) 
BEGIN
     IF @LanguageCode is null OR @LanguageCode='' 
     BEGIN
    	UPDATE vts_tbSurveyLayout
	  SET 	
		   SurveyHeaderText    =     @SurveyHeaderText,
	        SurveyFooterText =        @SurveyFooterText
	  WHERE
		 SURVEYID = @SURVEYID
      END 
      ELSE
      BEGIN
	    exec vts_spMultiLanguageTextUpdate @SurveyID, @LanguageCode, 14, @SurveyHeaderText
        exec vts_spMultiLanguageTextUpdate @SurveyID, @LanguageCode, 15, @SurveyFooterText
      END
END
ELSE
BEGIN
INSERT INTO vts_tbsurveylayout
              (SurveyId, SurveyHeaderText, SurveyFooterText, SurveyCss) 
              VALUES (@surveyId,@surveyHeaderText,@surveyFooterText,@surveyCss)
END
commit transaction


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new message condition  to the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMessageConditionAddNew] 
			@SurveyId int,
			@MessageConditionalOperator int,
			@QuestionID int,
			@AnswerID int,
			@TextFilter nvarchar(4000),
			@ThankYouMessage nvarchar(4000),
			@ConditionalOperator int,
			@ExpressionOperator int,			
			@Score	int,
			@ScoreMax int,
			@MessageConditionID int OUTPUT
AS
INSERT INTO vts_tbMessageCondition
	(SurveyID,
	MessageConditionalOperator,
	QuestionID,
	AnswerID,
	ConditionalOperator,
	ExpressionOperator,
	TextFilter,
	ThankYouMessage,
	Score,
	ScoreMax)
VALUES
	(@SurveyId,
	@MessageConditionalOperator,
	@QuestionID,
	@AnswerID,
	@ConditionalOperator,
	@ExpressionOperator,
	@TextFilter,
	@ThankYouMessage,
	@Score,
	@ScoreMax)

set @MessageConditionID = scope_identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionDeleteByID]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the given condition
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMessageConditionDeleteByID] @MessageConditionID int AS
DELETE FROM vts_tbMessageCondition WHERE MessageConditionID = @MessageConditionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionsGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve all message condition rules for the given survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMessageConditionsGetAll] @SurveyID int AS
SELECT vts_tbMessageCondition.*,  AnswerText, QuestionText
FROM vts_tbMessageCondition
LEFT JOIN vts_tbQuestion 	
	ON vts_tbQuestion.QuestionID =  vts_tbMessageCondition.QuestionID
LEFT JOIN vts_tbAnswer 
	ON vts_tbAnswer.AnswerID = vts_tbMessageCondition.AnswerID
WHERE vts_tbMessageCondition.SurveyID = @SurveyID
ORDER BY MessageConditionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionsGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieve  a condition rules details
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMessageConditionsGetDetails] @MessageConditionID int AS
SELECT * FROM vts_tbMessageCondition
WHERE MessageConditionID = @MessageConditionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMessageConditionUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// updates a new message condition  to the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMessageConditionUpdate] 
			@MessageConditionID  int,
			@MessageConditionalOperator int,
			@ExpressionOperator int,			
			@QuestionID int,
			@AnswerID int,
			@TextFilter nvarchar(4000),
			@ThankYouMessage nvarchar(4000),
			@ConditionalOperator int,
			@Score	int,
			@ScoreMax int
AS
UPDATE vts_tbMessageCondition SET
	MessageConditionalOperator = @MessageConditionalOperator,
	QuestionID = @QuestionID,
	AnswerID = @AnswerID,
	ConditionalOperator = @ConditionalOperator,
	TextFilter = @TextFilter,
	ThankYouMessage = @ThankYouMessage,
	Score = @Score,
	ScoreMax = @ScoreMax,
	ExpressionOperator = @ExpressionOperator			

WHERE MessageConditionID = @MessageConditionID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMovePageBreakDown]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a page break down
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey that contains the page break
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMovePageBreakDown] 
				@SurveyID int,
				@PageNumber int
AS
DECLARE 
	@NewPage int,
	@QuestionID int
	/*
SELECT TOP 1  
	@NewPage = PageNumber,
	@QuestionID = QuestionID
FROM 
	vts_tbQuestion
WHERE
	SurveyID = @SurveyID AND
	ParentQuestionID is null AND
	PageNumber > @PageNumber
	ORDER BY PageNumber ASC, DisplayOrder ASC
if @@ROWCOUNT <>0
BEGIN
	-- Move page break down from one question
	IF @PageNumber+1 = @NewPage 
	BEGIN
		UPDATE vts_tbQuestion 
			set PageNumber = @PageNumber 
		WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
END
*/
DECLARE @LastPage int

SELECT @LastPage=MAX(PageNumber) 
FROM vts_tbQuestion WHERE Surveyid=@SurveyId;

IF @@ROwCount =0 OR @LastPage=@PageNumber  return;


UPDATE vts_tbQuestion
SET PageNumber= CASE When PageNumber=@PageNumber   THEN PageNumber+1
                     When PageNumber=@PageNumber+1 THEN PageNumber-1
                     Else PageNumber
                 END 
    WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMovePageBreakUp]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a page break up
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey that contains the page break
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMovePageBreakUp] 
				@SurveyID int,
				@PageNumber int
AS
DECLARE 
	@NewPage int,
	@QuestionID int
	/*
SELECT TOP 1  
	@NewPage = PageNumber,
	@QuestionID = QuestionID
FROM 
	vts_tbQuestion
WHERE
	SurveyID = @SurveyID AND
	ParentQuestionID is null AND
	PageNumber < @PageNumber
	ORDER BY PageNumber DESC, DisplayOrder DESC
if @@ROWCOUNT <>0
BEGIN
	-- Move page break up from one question
	IF @PageNumber-1 = @NewPage 
	BEGIN
		UPDATE vts_tbQuestion 
			set PageNumber = @PageNumber 
		WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID
	END
END
*/
if(@PageNumber=1) return;

UPDATE vts_tbQuestion
SET PageNumber= CASE When PageNumber=@PageNumber   THEN PageNumber-1
                     When PageNumber=@PageNumber-1 THEN PageNumber+1
                     Else PageNumber
                 END 
    WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeClearSettings]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeClearSettings] @SurveyID int
AS

BEGIN TRAN ClearMultiLanguage

UPDATE vts_tbSurvey  SET MultiLanguageModeId = 0 WHERE SurveyID = @SurveyID

DELETE FROM vts_tbSurveyLanguage WHERE SurveyID = @SurveyID
DELETE FROM vts_tbMultiLanguageText WHERE (LanguageMessageTypeId = 1 OR LanguageMessageTypeId = 2) AND 
	LanguageItemID in (SELECT AnswerID FROM vts_tbAnswer A inner join vts_tbQuestion Q ON Q.QuestionID = A.QuestionID Where SurveyID = @SurveyID)
DELETE FROM vts_tbMultiLanguageText WHERE LanguageMessageTypeId = 3 AND 
	LanguageItemID in (SELECT QuestionID FROM vts_tbQuestion Where SurveyID = @SurveyID)

COMMIT TRAN ClearMultiLanguage


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeGet] @SurveyID int
AS

	SELECT MultiLanguageModeId FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyMultiLanguageModeUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyMultiLanguageModeUpdate] @SurveyID int, @MultiLanguageModeId int, @MultiLanguageVariable nvarchar(50)
AS

UPDATE vts_tbSurvey  SET MultiLanguageModeId = @MultiLanguageModeId, MultiLanguageVariable = @MultiLanguageVariable
WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyOnlyInvitedGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyOnlyInvitedGet] @SurveyID int 
AS
SELECT OnlyInvited FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyOnlyInvitedUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyOnlyInvitedUpdate] @SurveyID int, @OnlyInvited bit 
AS
UPDATE vts_tbSurvey SET OnlyInvited = @OnlyInvited FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySaveTokenUserDataGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveySaveTokenUserDataGet] @SurveyID int 
AS
SELECT SaveTokenUserData FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySaveTokenUserDataUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveySaveTokenUserDataUpdate] @SurveyID int, @SaveData bit 
AS
UPDATE vts_tbSurvey SET SaveTokenUserData = @SaveData FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySetFolder]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveySetFolder]
	@ParentFolderId int,
	@SurveyId int
AS
BEGIN
	SET NOCOUNT ON;
	declare @pid int
	-- we set parent to point to home folder
	select @pid = FolderId from vts_tbFolders where ParentFolderId IS NULL
	if exists(
          select 1 from vts_tbSurvey where FolderId=ISNULL(@ParentFolderId, @pid) and 
          Title =(select Title from vts_tbSurvey where SurveyID=@SurveyId)
          and SurveyID!=@SurveyId )
         begin
           raiserror('DUPLICATEFOLDER',16,4);
           return;
         end;
    Update vts_tbSurvey
	set FolderId = ISNULL(@ParentFolderId, @pid)
	where SurveyID = @SurveyId
	
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveySkipLogicRuleCopyToSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// clone all branchings of a survey to another
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveySkipLogicRuleCopyToSurvey] @SurveyId int, @ClonedSurveyID int AS


DECLARE @ConditionalOperator int,
	@ExpressionOperator int,
	@AnswerID int,
	@ClonedAnswerID int,
	@QuestionID int,
	@SkipQuestionID int,
	@ClonedSkipQuestionID int,
	@ClonedQuestionID int,
	@TextFilter varchar(4000),
	@Score int,
	@ScoreMax int


DECLARE SkipCursor CURSOR FOR
	SELECT 
		ConditionalOperator,
		ExpressionOperator,
		AnswerID,
		SkipQuestionID,
		vts_tbSkipLogicRule.QuestionID,
		TextFilter,
		Score,
		ScoreMax
	FROM vts_tbSkipLogicRule
	INNER JOIN vts_tbQuestion
		ON vts_tbQuestion.QuestionID = vts_tbSkipLogicRule.SkipQuestionID
	WHERE SurveyID = @SurveyID


OPEN SkipCursor
FETCH SkipCursor INTO 
	@ConditionalOperator,
	@ExpressionOperator,
	@AnswerID,
	@SkipQuestionID,
	@QuestionID,
	@TextFilter,
	@Score,
	@ScoreMax
WHILE @@FETCH_STATUS = 0
BEGIN

	-- Get question id that is in the cloned survey
	SELECT @ClonedSkipQuestionID = (select QuestionID  from vts_tbQuestion WHERE SurveyID = @ClonedSurveyID AND QuestionText = (select QuestionText FROM vts_tbQuestion WHERE QuestionID = @SkipQuestionID) AND 
				DisplayOrder = (select DisplayOrder FROM vts_tbQuestion WHERE QuestionID = @SkipQuestionID)) 

	-- Get question id that is in the cloned survey
	SELECT @ClonedQuestionID =	(select QuestionID  from vts_tbQuestion WHERE SurveyID = @ClonedSurveyID AND QuestionText = (select QuestionText FROM vts_tbQuestion WHERE QuestionID = @QuestionID) AND 
				DisplayOrder = (select DisplayOrder FROM vts_tbQuestion WHERE QuestionID = @QuestionID)) 
	
	IF @AnswerID is not NULL
	BEGIN
		-- Get answer id from the cloned survey
		SELECT @ClonedAnswerId = 
				(select answerId from vts_tbAnswer WHERE QuestionId = @ClonedQuestionID AND 
				DisplayOrder = (select DisplayOrder FROM vts_tbAnswer WHERE AnswerId = @AnswerID))
	END
	ELSE
	BEGIN
		SET @ClonedAnswerID = null
	END

	INSERT INTO vts_tbSkipLogicRule(ConditionalOperator, ExpressionOperator, AnswerID, SkipQuestionID, QuestionID, TextFilter, Score, ScoreMax)
	VALUES (@ConditionalOperator, @ExpressionOperator, @ClonedAnswerID, @ClonedSkipQuestionID, @ClonedQuestionID, @TextFilter, @Score, @ScoreMax)

	FETCH SkipCursor INTO 
		@ConditionalOperator,
		@ExpressionOperator,
		@AnswerID,
		@SkipQuestionID,
		@QuestionID,
		@TextFilter,
		@Score,
		@ScoreMax
END

CLOSE SkipCursor 
DEALLOCATE SkipCursor


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenAddMultiple]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURe [dbo].[vts_spSurveyTokenAddMultiple]
 @SurveyId int,
 @CreationDate date,
 @tblTokenList VarcharTableType readonly
	
AS
BEGIN
	
	SET NOCOUNT ON;
INSERT INTO vts_tbSurveyToken(SurveyId,CreationDate,Token,Used)
SELECT @SurveyId,@CreationDate,list.value,0
FROM @tblTokenList as list;

END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenDeleteMultiple]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURe [dbo].[vts_spSurveyTokenDeleteMultiple]
 @tblTokenIdList IntTableType readonly
	
AS
BEGIN
	
SET NOCOUNT ON;
DELETE FROM vts_tbSurveyToken
WHERE TokenId in(
SELECT value
FROM @tblTokenIdList 
);
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given UId is valid and returns its survey id
/// </summary>
/// <param name="@UID">
/// UId to check
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyTokenUpdate] 
@SurveyId int,@Token varchar(40),
@VoterId int
AS

UPDATE vts_tbSurveyToken
SET used=1,
    VoterId=case when @voterId<=0 then null else @voterId end
WHERE SurveyId =@SurveyId
AND   Token=@Token


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyTokenValidate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given UId is valid and returns its survey id
/// </summary>
/// <param name="@UID">
/// UId to check
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyTokenValidate] 
@SurveyId int,@Token varchar(40)
AS

select 1 from vts_tbSurveyToken
WHERE SurveyId =@SurveyId
AND   Token=@Token
AND   used=0;


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Updates a survey
/// </summary>
/// <remarks>
/// Only one survey can be activated at one time
/// </remarks>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyUpdate] 

				@LanguageCode nvarchar(50),
				@SurveyID int,
				@OpenDate datetime,
				@CloseDate datetime,
				@Title nvarchar(255),
				@ThankYouMessage nvarchar(4000),
				@RedirectionURL varchar(1024),
				@Archive bit,
				@Activated bit,
				@ResumeModeID int,
				@NavigationEnabled bit,
				@ProgressDisplayModeId int,
				@NotificationModeId int,
				@Scored bit,
				@QuestionNumberingDisabled bit,
			    @DefaultSurvey bit=0
AS

if exists(
          select 1 from vts_tbSurvey where FolderId=
          (select folderid from vts_tbsurvey where surveyId=@SurveyID)
          and Title =@Title  and surveyId!=@SurveyID)
         begin
    
           raiserror('DUPLICATEFOLDER',16,4);
           return;
         end;
         
if @DefaultSurvey <> 0
-- Only one survey can be activated at one time
UPDATE vts_tbSurvey SET DefaultSurvey = 0 WHERE DefaultSurvey<>0


         
         
UPDATE vts_tbSurvey 
SET 
	ProgressDisplayModeId = @ProgressDisplayModeId,
	NotificationModeId = @NotificationModeId,
	ResumeModeID = @ResumeModeID,
	OpenDate = @OpenDate,
	CloseDate = @CloseDate,
	Title = @Title, 
	NavigationEnabled = @NavigationEnabled,
	Archive = @Archive, 
	Activated = @Activated,
	Scored = @Scored,
	QuestionNumberingDisabled = @QuestionNumberingDisabled,
    DefaultSurvey=@DefaultSurvey
WHERE SurveyID = @SurveyID

-- Updates text
IF @LanguageCode is null OR @LanguageCode='' 
BEGIN
	UPDATE vts_tbSurvey
	SET 	ThankYouMessage = @ThankYouMessage,
		RedirectionURL = @RedirectionURL
	WHERE
		SurveyID = @SurveyID
END
ELSE
BEGIN
	-- Updates localized text
	exec vts_spMultiLanguageTextUpdate @SurveyId, @LanguageCode, 4, @ThankYouMessage
	exec vts_spMultiLanguageTextUpdate @SurveyId, @LanguageCode, 5, @RedirectionURL
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateASPNetSubmissions]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyUpdateASPNetSubmissions] @SurveyID int, @AllowMultipleSubmissions  bit 
AS
UPDATE vts_tbSurvey SET AllowMultipleUserNameSubmissions = @AllowMultipleSubmissions FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateFriendlyName]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyUpdateFriendlyName]
	@SurveyId int,
	@FriendlyName varchar(200)
AS
BEGIN
	SET NOCOUNT ON;
	
	
    Update vts_tbSurvey
	set friendlyname=@friendlyname
	where SurveyID = @SurveyId
	
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateNSurveySubmissions]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spSurveyUpdateNSurveySubmissions] @SurveyID int, @AllowMultipleNSurveySubmissions bit 
AS
UPDATE vts_tbSurvey SET AllowMultipleNSurveySubmissions = @AllowMultipleNSurveySubmissions FROM vts_tbSurvey WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyUpdateUnAuthentifiedUserAction]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Updates the unauthenticated action
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyUpdateUnAuthentifiedUserAction] @SurveyId int, @UnAuthentifiedUserActionId int
AS
	UPDATE vts_tbSurvey SET UnAuthentifiedUserActionID = @UnAuthentifiedUserActionID WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyValidatePassword]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the given password match the survey password that was setup
/// </summary>
/// <param name="@SurveyId">
/// Id of the protected survey
/// </param>
/// <param name="@Password">
/// Password to validate
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spSurveyValidatePassword]  @SurveyId int, @Password nvarchar(255) AS
SELECT 
	SurveyID
FROM vts_tbSurvey 
WHERE SurveyID = @SurveyID AND (AccessPassword = @Password)


GO
/****** Object:  StoredProcedure [dbo].[vts_spTokenGetForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get the questions until next page break
/// </summary>
/// <param name="@LibraryID">
/// ID of the library  to retrieve questions from
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spTokenGetForSurvey]
			@SurveyId int
AS
	SELECT * from vts_tbSurveyToken
	WHERE SurveyId=@SurveyId


GO
/****** Object:  StoredProcedure [dbo].[vts_spTreeGetFolders]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spTreeGetFolders]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sv.SurveyID, sv.Title, fs.FolderId, fs.ParentFolderId, fs.FolderName FROM vts_tbSurvey AS sv
	RIGHT OUTER JOIN vts_tbFolders AS fs ON fs.FolderId = sv.FolderId

END


GO
/****** Object:  StoredProcedure [dbo].[vts_spTreeNodesGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- JJ Modified to restrict to Surveys to which the User has access
--
CREATE PROCEDURE [dbo].[vts_spTreeNodesGetAll](
@UserId int)
AS
BEGIN	
	SET NOCOUNT ON;
	WITH CTE As
	(
	SELECT sv.FolderID , 
		 fs.FolderName , 
		fs.ParentFolderId 
		FROM vts_tbSurvey AS sv
		JOIN vts_tbFolders AS fs ON fs.FolderId = sv.FolderId 
		WHERE exists(
	    select 1 from vts_tbUserSurvey as usr
	    where usr.surveyId=sv.surveyId and usr.UserId=@UserId )
	    OR exists(
	    select 1 from vts_tbusersetting us
	      where us.userid=@UserId
	      and(us.GlobalSurveyAccess=1 OR us.IsAdmin=1)
	    )
	    UNION ALL
	    SELECT fs.FolderId   , 
	           fs.FolderName , 
		       fs.ParentFolderId  
		from vts_tbFolders as fs JOIN cte 
		on cte.ParentFolderId=fs.FolderId
		where cte.parentFolderId IS NOT NULL
	    )
	SELECT 's' + CONVERT(varchar, sv.SurveyID) as ItemId, 
		ISNULL(sv.Title, fs.FolderName) as NodeName, 
		'f' + CONVERT(varchar, sv.FolderId) as ParentFolderId
		FROM vts_tbSurvey AS sv 
		JOIN vts_tbFolders AS fs ON fs.FolderId = sv.FolderId 
		WHERE (exists(
	    select 1 from vts_tbUserSurvey as usr
	    where usr.surveyId=sv.surveyId and usr.UserId=@UserId )
	    or exists (
	    select 1 from vts_tbUserSetting st
	    where st.userid=@userid
	    and (st.Isadmin=1 or st.GlobalSurveyAccess=1)
	    )
	    )
	  
	UNION 
	SELECT 'f' + CONVERT(varchar, fs.FolderId)  as ItemId , FolderName  as NodeName, 
		'f' + CONVERT(varchar, fs.ParentFolderId)  as ParentFolderId
		from cte as fs 
     UNION
	SELECT 'f' + CONVERT(varchar, fs.FolderId)  as ItemId , FolderName  as NodeName, 
		'f' + CONVERT(varchar, fs.ParentFolderId)  as ParentFolderId
		from vts_tbFolders as fs 
	WHERE exists(
	    select 1 from vts_tbUserSetting st
	    where st.userid=@userid
	    and (st.Isadmin=1 or st.GlobalSurveyAccess=1))
		ORDER BY NodeName		
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUnAuthentifiedUserActionGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spUnAuthentifiedUserActionGetAll] AS
SELECT * FROM vts_tbUnAuthentifiedUserAction


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// adds a new nsurvey user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserAddNew]
			@UserID int out,
			@UserName nvarchar(255),
			@Password nvarchar(255),
	        @PasswordSalt nvarchar(255),
			@LastName nvarchar(255),
			@FirstName nvarchar(255),  
			@Email nvarchar(255)
			
AS

INSERT INTO vts_tbUser (UserName,
	Password,
    PasswordSalt,
	FirstName,
	LastName,
	Email)
VALUES (@UserName,
	@Password,
	@PasswordSalt,
	@FirstName,
	@LastName,
	@Email)



SELECT @UserID = scope_identity()



GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAnswerTypeAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Assign an answer type to the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserAnswerTypeAssignUser] @AnswerTypeID int, @UserID int AS

SELECT AnswerTypeId FROM vts_tbUserAnswerType WHERE AnswerTypeID = @AnswerTypeID AND UserID = @UserID
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbUserAnswerType(AnswerTypeID, UserID) VALUES (@AnswerTypeID, @UserID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserAnswerTypeUnAssignAllUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Assign an answer type to the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserAnswerTypeUnAssignAllUser] @AnswerTypeID int AS

DELETE FROM vts_tbUserAnswerType WHERE AnswerTypeID =@AnswerTypeID


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// deletes a user from the database
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserDelete]
			@UserID int
			
AS
BEGIN TRAN DeleteUserTran
DELETE FROM vts_tbUserRole WHERE UserId = @UserID
DELETE FROM vts_tbUserSurvey WHERE UserId = @UserID
DELETE FROM vts_tbUserSetting WHERE UserId = @UserID
DELETE FROM vts_tbUser WHERE UserId = @UserID
COMMIT TRAN DeleteUserTran


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetAdminCount]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Returns the number of admins in the database
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserGetAdminCount]
			
AS

SELECT count(*) FROM vts_tbUserSetting WHERE IsAdmin<>0


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetData]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Gets the details of a user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserGetData] @UserName nvarchar(255), @Password nvarchar(255) AS

SELECT 
	UserID, UserName, 
	Password, FirstName, 
	LastName, Email, 
	CreationDate, LastLogin
FROM vts_tbUser
WHERE UserName = @UserName AND Password = @Password

IF @@rowcount > 0
BEGIN
	UPDATE vts_tbUser SET
		LastLogin = getdate() 
	WHERE UserName = @UserName AND Password = @Password
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Gets the details of a user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserGetDetails] @UserID int AS

SELECT 
	UserID, UserName, 
	Password, PasswordSalt,FirstName, 
	LastName, Email, 
	CreationDate, LastLogin 
FROM vts_tbUser
WHERE UserID = @UserID



GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// gets the full list of nsurvey users
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserGetList] AS

SELECT 
	UserID, UserName, 
	Password, FirstName, 
	LastName, Email, 
	CreationDate, LastLogin
FROM vts_tbUser
ORDER BY UserName


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetListByFilter]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spUserGetListByFilter]
	@UserName varchar(200) = null,
	@FirstName varchar(200) = null,
	@LastName varchar(200) = null,
	@Email varchar(200) = null,
	@Administrator int = null
AS
BEGIN
	SET NOCOUNT ON;

	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 u.[UserId]
      ,u.[UserName]
      ,u.[Password]
      ,u.[FirstName]
      ,u.[LastName]
      ,u.[Email]
      ,u.[CreationDate]
      ,u.[LastLogin]
      ,us.IsAdmin
  FROM [dbo].[vts_tbUser] u
  INNER JOIN [dbo].[vts_tbUserSetting] us ON us.UserId = u.[UserId]
  WHERE (u.UserName LIKE '%'+ ISNULL(@UserName, '') + '%' OR u.UserName is NULL)
  AND (u.FirstName LIKE '%'+ ISNULL(@FirstName, '') +'%' OR u.FirstName IS NULL)
  AND (u.LastName LIKE '%'+ ISNULL(@LastName, '') +'%' OR u.LastName IS NULL)
  AND (u.Email LIKE '%'+ ISNULL(@Email, '') +'%' or u.email is null)
  AND (@Administrator is null OR us.IsAdmin = @Administrator)
   Order by u.[UserName]
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserGetUserIdFromUserName]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Returns the user id of the username
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserGetUserIdFromUserName]
			@UserName nvarchar(255)
			
AS

SELECT UserID FROM vts_tbUser WHERE UserName = @UserName


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserIsAdmin]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// check if the user is an administrator
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserIsAdmin] @UserID int AS

SELECT IsAdmin FROM vts_tbUserSetting WHERE UserID = @UserID AND IsAdmin<>0


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRegularExpressionAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Assign an regex to the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserRegularExpressionAssignUser] @RegularExpressionID int, @UserID int AS

SELECT RegularExpressionId FROM vts_tbUserRegularExpression WHERE RegularExpressionId = @RegularExpressionId AND UserID = @UserID
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbUserRegularExpression(RegularExpressionID, UserID) VALUES (@RegularExpressionId, @UserID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Assign a new role to the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserRoleAssignUser] @RoleID int, @UserID int AS

SELECT RoleID FROM vts_tbUserRole WHERE RoleID = @RoleID AND UserID = @UserID
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbUserRole(RoleID, UserID) VALUES (@RoleID, @UserID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleGetAssignedList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get user's roles
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserRoleGetAssignedList] @UserID int AS

SELECT ur.RoleId, RoleName FROM vts_tbUserRole ur
INNER JOIN vts_tbRole 
	ON vts_tbRole.RoleID = ur.RoleID 
WHERE ur.UserID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleGetUnAssignedList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Get user's roles
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserRoleGetUnAssignedList] @UserID int AS

SELECT vts_tbRole.RoleId, RoleName FROM vts_tbRole 
WHERE vts_tbRole.RoleId not in (SELECT RoleID FROM vts_tbUserRole WHERE USerID = @UserID)


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserRoleUnAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Removes a user survey assignement
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserRoleUnAssignUser] @RoleID int, @UserID int 
AS
	DELETE FROM vts_tbUserRole WHERE RoleID=@RoleID AND UserID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSecurityRightGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Gets the details of a user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserSecurityRightGet] @UserId int AS

-- get rights, if a role forbit a right forbidden right will win 
SELECT distinct rs.SecurityRightId
FROM vts_tbRoleSecurityRight rs
INNER JOIN vts_tbUserRole ur
	ON ur.RoleID = rs.RoleID
WHERE 
	ur.UserID = @UserID
	/*
	 AND
	((select count(*) FROM vts_tbUserRole WHERE UserID=@UserID AND vts_tbUserRole.RoleID <> ur.RoleID) = 0 OR 
		((select count(*) FROM vts_tbUserRole WHERE UserID=@UserID AND vts_tbUserRole.RoleID <> ur.RoleID) > 0 AND 
	rs.SecurityRightId IN (
		SELECT distinct SecurityRightId 
		FROM vts_tbRoleSecurityRight 
		INNER JOIN vts_tbUserRole
			ON vts_tbUserRole.RoleID = vts_tbRoleSecurityRight.RoleID
		WHERE 
		ur.UserID = @UserID AND 
		vts_tbUserRole.RoleID <> ur.RoleID)))


*/


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spUserSettingAddNew]
			@UserID int,
			@IsAdmin bit,
			@GlobalSurveyAccess bit
AS

INSERT INTO vts_tbUserSetting (UserId, IsAdmin, GlobalSurveyAccess) VALUES (@UserID, @IsAdmin, @GlobalSurveyAccess)


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingGet]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Gets the settings of the user
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserSettingGet] @UserID int AS

SELECT UserId, IsAdmin, GlobalSurveyAccess
FROM vts_tbUserSetting
WHERE UserID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSettingUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spUserSettingUpdate]
			@UserID int,
			@IsAdmin bit,
			@GlobalSurveyAccess bit
AS

UPDATE vts_tbUserSetting SET
	IsAdmin = @IsAdmin,
	GlobalSurveyAccess = @GlobalSurveyAccess
WHERE UserID = @UserID

if @@rowcount = 0
BEGIN
	exec vts_spUserSettingAddNew @UserID, @IsAdmin, @GlobalSurveyAccess
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSurveyAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Assign a new user to the survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserSurveyAssignUser] @SurveyID int, @UserID int AS

SELECT SurveyID FROM vts_tbUserSurvey WHERE SurveyID = @SurveyID AND UserID = @UserID
IF @@rowcount = 0
BEGIN
	INSERT INTO vts_tbUserSurvey(SurveyID, UserID) VALUES (@SurveyID, @UserID)
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserSurveyUnAssignUser]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Removes a user survey assignement
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spUserSurveyUnAssignUser] @SurveyID int, @UserID int 
AS
	DELETE FROM vts_tbUserSurvey WHERE SurveyID=@SurveyID AND UserID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[vts_spUserUpdate]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[vts_spUserUpdate]
			@UserID int,
			@UserName nvarchar(255),
			@Password nvarchar(255),
		    @PasswordSalt nvarchar(255),
			@LastName nvarchar(255),
			@FirstName nvarchar(255),  
			@Email nvarchar(255)
			
AS

UPDATE vts_tbUser SET
	UserName = @UserName,
	FirstName = @FirstName,
	LastName = @LastName,
	Email = @Email
WHERE UserID = @UserID

if @Password is not null or @PasswordSalt is not null
BEGIN
	UPDATE vts_tbUser SET
		Password = @Password,
	    PasswordSalt = @PasswordSalt
	WHERE UserID = @UserID
END



GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new voter
/// </summary>
*/

CREATE PROCEDURE [dbo].[vts_spVoterAddNew]
			@SurveyID int,
			@IPSource nvarchar(50),
			@VoteDate datetime,
			@StartDate datetime,
			@UID varchar(50),
			@Validated bit = 1, 
			@ResumeUID varchar(50) ,
			@ProgressSaveDate datetime,
			@ResumeAtPageNumber int ,
			@ResumeQuestionNumber int,
			@ResumeHighestPageNumber int,
			@LanguageCode nvarchar(50),
			@VoterID int OUTPUT
AS
INSERT INTO vts_tbVoter
	(SurveyID,
	UID,
	IPSource , 
	VoteDate,
	StartDate,
	Validated,
	ResumeUID,
	ProgressSaveDate,
	ResumeAtPageNumber,
	ResumeQuestionNumber,
	ResumeHighestPageNumber,
	LanguageCode)
VALUES
	 (@SurveyID,
	@UID,
	@IPSource,
	@VoteDate,
	@StartDate,
	@Validated,
	@ResumeUID,
	@ProgressSaveDate,
	@ResumeAtPageNumber,
	@ResumeQuestionNumber,
	@ResumeHighestPageNumber,
	@LanguageCode)

set @VoterID = SCOPE_Identity()
if @UID is not null
BEGIN 
	exec vts_spVoterUIdAddNew @VoterID, @UId
END
Update vts_tbSurvey set LastEntryDate = GetDate() WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAnswersAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new answer given by a voter
/// </summary>
/// <param name="@VoterID">
/// Voter's owner of the answer ID
/// </param>
/// <param name="@AnswerID">
/// Which answer has been answered
/// </param>
/// <param name="@AnswerText">
/// Text if any entered by the voter
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterAnswersAddNew]
			@VoterID int,
			@AnswerID int,
			@SectionNumber int,
			@AnswerText ntext
AS
INSERT INTO vts_tbVoterAnswers
	(VoterID , 
	AnswerID,
	AnswerText,
	SectionNumber)
VALUES
	 (@VoterID,
	@AnswerID,
	@AnswerText,
	@SectionNumber)


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterAnswersImport]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new answer given by a voter
/// </summary>
/// <param name="@VoterID">
/// Voter's owner of the answer ID
/// </param>
/// <param name="@AnswerID">
/// Which answer has been answered
/// </param>
/// <param name="@AnswerText">
/// Text if any entered by the voter
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterAnswersImport]
            @SurveyId int,-- Ensure Question is in right survey
			@VoterID int,
			@SectionNumber int,
			@VoterAnswer ntext=null,
		    @Answer nvarchar(400)=null,
		    @QuestionText nvarchar(4000),
			@QuestionDisplayOrder int,
			@AnswerDisplayOrder int as

declare @AnswerId int,
        @AnswerTypeId int
BEGIN TRY

SELECT @AnswerId=AnswerId,
       @AnswerTypeId=AnswerTypeId
FROM vts_tbAnswer as a inner Join
     vts_tbQuestion as q
ON   q.QuestionId=a.QuestionId
WHERE q.DisplayOrder=@QuestionDisplayOrder
AND   q.SurveyId=@SurveyId
AND   replace(dbo.fnStriptags(q.QuestionText),' ','')
             =replace(@QuestionText,' ','')
AND   a.DisplayOrder=@AnswerDisplayOrder;

IF (@@ROWCOUNT =0) 
RAISERROR
    (N'No Question / Answer Combination with %d/%d/%s',
    16, -- Severity.
    1, -- State.
    @QuestionDisplayOrder, -- First substitution argument.
    @AnswerDisplayOrder,
    @QuestionText)  -- Second substitution argument.
        
INSERT INTO vts_tbVoterAnswers
	(VoterID , 
	AnswerID,
	AnswerText,
	SectionNumber)
VALUES
	 (@VoterID,
	@AnswerID,
	CASE WHEN
	  @AnswerTypeId IN(1) THEN NULL
	ELSE @VoterAnswer END,
	@SectionNumber)

END TRY
BEGIN CATCH
DECLARE
@ERROR_SEVERITY int = ERROR_SEVERITY(),
@ERROR_STATE int = ERROR_STATE(),
@ERROR_NUMBER int = ERROR_NUMBER(),
@ERROR_LINE int = ERROR_LINE(),
@ERROR_MESSAGE varchar(245) = ERROR_MESSAGE();
RAISERROR('Msg %d, Line %d: %s',
@ERROR_SEVERITY,
@ERROR_STATE,
@ERROR_NUMBER,
@ERROR_LINE,
@ERROR_MESSAGE);
END CATCH


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterCheckIfIPExists]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the ip has already been registered in a vote 
/// in the expiration time lapse
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to which the ip belongs
/// </param>
/// <param name="@IP">
/// IP to check for
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterCheckIfIPExists] 
				@SurveyID int,  
				@IP varchar(50)
AS
SELECT VoterID 
FROM vts_tbVoter 
INNER JOIN vts_tbSurvey
	ON vts_tbSurvey.SurveyID = vts_tbVoter.SurveyID
WHERE 
	vts_tbVoter.SurveyID = @SurveyID AND 
	IPSource = @IP AND
	DateAdd(Minute,IPExpires,VoteDate)>GetDate() ORDER BY VoteDate DESC


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterCheckIfUIDExists]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Check if the UID has already been registered in a vote 
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to which the ip belongs
/// </param>
/// <param name="@UID">
/// UID to check for
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterCheckIfUIDExists] 
				@SurveyID int,  
				@UID varchar(40)
AS
SELECT VoterID 
FROM vts_tbVoter 
WHERE 
	SurveyID = @SurveyID AND 
	UID = @UID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes the voter from the DB
/// </summary>
/// <param name="@VoterID">
/// The id of the voter to delete
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDelete] @VoterID int
AS
DELETE FROM vts_tbVoterEmail WHERE VoterID =@VoterID
DELETE FROM vts_tbVoter WHERE VoterID = @VoterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all voters from the DB
/// </summary>
/// <param name="@SurveyID">
/// Survey id from which to delete the voters
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeleteAll] @SurveyID int
AS
DELETE FROM vts_tbVoterEmail WHERE VoterID IN (SELECT VoterID FROM vts_tbVoter WHERE SurveyID = @SurveyID)
DELETE FROM vts_tbVoter WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all answers that a voter gave to the survey question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeleteAnswers]  @VoterId int
AS
	DELETE FROM vts_tbVoterAnswers WHERE VoterID = @VoterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeletePageAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all answers that a voter gave to the questions of the page
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeletePageAnswers]   @SurveyID int, @VoterId int,@PageNumber  int 
AS
	DELETE FROM vts_tbVoterAnswers WHERE VoterID = @VoterID AND AnswerID IN (
	SELECT AnswerID FROM vts_tbAnswer WHERE QuestionID in 
		(SELECT QuestionID FROM vts_tbQuestion 
		WHERE SurveyID = @SurveyID AND PageNumber = @PageNumber))


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteQuestionAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all answers that a voter gave to the question
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeleteQuestionAnswers]  @VoterId int, @QuestionID int 
AS

	DELETE FROM vts_tbVoterAnswers WHERE VoterID = @VoterID AND AnswerID IN (
	SELECT AnswerID FROM vts_tbAnswer WHERE QuestionID in 
		(SELECT QuestionID FROM vts_tbQuestion 
		WHERE QuestionID = @QuestionID OR ParentQuestionID = @QuestionID))


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteResumeSession]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes a resume session of a voter from the DB
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeleteResumeSession] @SurveyId int, @ResumeUID nvarchar(40) 
AS

DECLARE @VoterID int

DELETE FROM vts_tbVoterEmail WHERE VoterID IN (SELECT VoterID FROM vts_tbVoter WHERE SurveyID = @SurveyID AND ResumeUID = @ResumeUID)
DELETE FROM vts_tbVoter WHERE SurveyID = @SurveyID AND ResumeUID = @ResumeUID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterDeleteUnvalidated]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Deletes all saved progress entries that have not 
/// been validated
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterDeleteUnvalidated]
				@SurveyID int
AS

DELETE FROM vts_tbVoter WHERE SurveyID = @SurveyID AND Validated = 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterExportCSVData]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Return the data needed to export a CSV  file
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterExportCSVData]
				@SurveyID int,
				@StartDate datetime ,
				@EndDate datetime
AS

SELECT  SUBSTRING(Q.QuestionText,1,20) as QuestionText,Q.QuestionId,
 AnswerID,SelectionModeId,AnswerTypeId, 
SUBSTRING(Q.QuestionText,1,20)+'...'+' | '+ AnswerText   as ColumnHeader ,
AnswerText,
Q.DisplayOrder QuestionDisplayOrder,
Q.QuestionId,
Q.Alias QuestionAlias,
Q.QuestionIdText QuestionIdText,
A.DisplayOrder AnswerDisplayOrder,
A.AnswerId ,
A.AnswerAlias,Q.ParentQuestionid,
	case when q.parentQuestionId is null then null
	else (select count(*)+1 from vts_tbquestion q1 
	         where q1.parentquestionid=q.parentquestionid
	         and   q1.questionid<q.questionid
	         ) 
	end as roworder,
	case when q.parentQuestionId is null then null
	else (select QuestionText from vts_tbquestion q1 
	         where q1.questionid=q.parentquestionid
	         ) 
	end as ParentQuestiontext,
	case when q.parentQuestionId is null then null
	else (select QuestionIdText from vts_tbquestion q1 
	         where q1.questionid=q.parentquestionid
	         ) 
	end as ParentQuestionIdtext,
	case when q.parentQuestionId is null then null
	else (select ALIAS from vts_tbquestion q1 
	         where q1.questionid=q.parentquestionid
	         ) 
	end as ParentQuestionAliastext,
A.AnswerIDText AnswerIdText
 FROM vts_tbQuestion Q
INNER JOIN vts_tbAnswer A
	ON A.QuestionID = Q.QuestionID
WHERE 
	SurveyID = @SurveyID  
ORDER BY Q.DisplayOrder, Q.QuestionID, A.DisplayOrder

SELECT
	V.VoterID,
	V.VoteDate,
	V.StartDate,
	V.IPSource,
	V.ContextUserName as username,
	(SELECT sum(ScorePoint) FROM vts_tbVoter 
		INNER JOIN vts_tbVoterAnswers
			ON vts_tbVoterAnswers.VoterID = vts_tbVoter.VoterID
		INNER JOIN vts_tbAnswer
			ON vts_tbAnswer.AnswerID = vts_tbVoterAnswers.AnswerID
		WHERE vts_tbVoter.VoterID = V.VoterID) AS Score
	FROM vts_tbVoter V
	WHERE 
		V.SurveyID = @SurveyID AND
		V.Validated <> 0 AND
		DATEDIFF (d,@startDate,V.VoteDate) >= 0 AND DATEDIFF (d,@endDate,V.VoteDate) <= 0
	ORDER BY V.VoterID DESC

SELECT
	V.VoterID,
	VA.AnswerID,
	SectionNumber,
	VA.AnswerText,
	AnswerTypeId,
	SelectionModeId,
	Q.QuestionId,
	A.AnswerText AnswerAnswerText,
	A.DisplayOrder AnswerDisplayOrder,
A.AnswerAlias,
A.AnswerIDText AnswerIdAlias
FROM vts_tbVoterAnswers VA
INNER JOIN vts_tbVoter V
	ON V.VoterID = VA.VoterID
INNER JOIN vts_tbAnswer A
    ON VA.AnswerId=A.AnswerId
INNER JOIN vts_tbQuestion Q
     ON A.QuestionId=Q.QuestionId
WHERE 
	V.SurveyID = @SurveyID AND
	V.Validated <> 0 AND
	DATEDIFF (d,@startDate,V.VoteDate) >= 0 AND DATEDIFF (d,@endDate,V.VoteDate) <= 0
ORDER BY V.VoterID DESC


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterFilter]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
CREATE PROCEDURE [dbo].[vts_spVoterFilter] 
			@FilterID int, 
			@QuestionID  int,
			@SortOrder varchar(4) = 'ANS',
			@StartDate datetime,
			@EndDate datetime,
			@LanguageCode nvarchar(50)
AS
SET NOCOUNT ON
CREATE TABLE #FilteredVoters (VoterID int )
DECLARE @FilterRuleID int,
		@FilterAnswerID int,
		@FilterQuestionID int,
		@SurveyID int,
		@TextFilter nvarchar(4000),
		@LogicalOperatorTypeID  int
SELECT @LogicalOperatorTypeID = vts_tbFilter.LogicalOperatorTypeID FROM vts_tbFilter WHERE FilterID = @FilterID
-- Get the filters
DECLARE GetRules CURSOR LOCAL READ_ONLY  FOR 
SELECT 
	vts_tbFilterRule.FilterRuleID, vts_tbFilterRule.AnswerID, 
	vts_tbFilterRule.QuestionID, vts_tbFilter.SurveyID, 
	vts_tbFilterRule.TextFilter 
FROM vts_tbFilterRule 
INNER JOIN vts_tbFilter 
	ON vts_tbFilterRule.FilterID = vts_tbFilter.FilterID 
WHERE vts_tbFilter.FilterID=@FilterID ORDER BY vts_tbFilterRule.FilterRuleID
-- CHECKING OF ANSWERID = -1 THEN SELECT VOTERS WITH ANY ANSWER 
OPEN GetRules
FETCH NEXT FROM GetRules INTO @FilterRuleID,  @FilterAnswerID, @FilterQuestionID, @SurveyID, @TextFilter
-- Apply the first filter rule
IF @FilterAnswerID is NULL AND @FilterRuleID is not NULL
BEGIN
	-- get voters who answered any answer of the question
	INSERT INTO #FilteredVoters 
		SELECT DISTINCT vts_tbVoterAnswers.VoterID 
		FROM (SELECT AnswerID FROM vts_tbAnswer WHERE QuestionID=@FilterQuestionID) 
		AS AllAnswers, vts_tbVoterAnswers
		INNER JOIN vts_tbVoter 
			ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
		WHERE 
			vts_tbVoter.Validated<>0 AND  
			vts_tbVoterAnswers.AnswerID = AllAnswers.AnswerID AND 
			vts_tbVoterAnswers.VoterID NOT IN (SELECT VoterID FROM #FilteredVoters)
END 
ELSE
	IF @TextFilter is NULL
	BEGIN
    -- no text filter setup    
		INSERT INTO #FilteredVoters 
		SELECT vts_tbVoterAnswers.VoterID 
		FROM vts_tbVoterAnswers
		INNER JOIN vts_tbVoter 
			ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
		WHERE 
			vts_tbVoter.Validated<>0 AND  
			vts_tbVoterAnswers.AnswerID = @FilterAnswerID 
	END    
	ELSE
    -- text filter setup
		INSERT INTO #FilteredVoters 
		SELECT vts_tbVoterAnswers.VoterID 
		FROM vts_tbVoterAnswers
		INNER JOIN vts_tbVoter 
			ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
		WHERE 
			vts_tbVoter.Validated<>0 AND  
			vts_tbVoterAnswers.AnswerID = @FilterAnswerID AND 
			vts_tbVoterAnswers.AnswerText LIKE  '%'+replace(@TextFilter,' ','%')+'%'  
-- Retrieve next rule
FETCH NEXT FROM GetRules INTO @FilterRuleID,  @FilterAnswerID, @FilterQuestionID, @SurveyID, @TextFilter
-- Parse all remaining rules and apply logical operation
WHILE @@FETCH_STATUS = 0
BEGIN      
	IF @LogicalOperatorTypeID = 1     
	-- OR Operation
	BEGIN
		IF @FilterAnswerID is NULL  AND @FilterRuleID is not NULL
		BEGIN
			print 'get all'
			-- get voters who answered any answer of the question
			INSERT INTO #FilteredVoters 
				SELECT DISTINCT vts_tbVoterAnswers.VoterID 
				FROM (SELECT AnswerID FROM vts_tbAnswer WHERE QuestionID=@FilterQuestionID) 
				AS AllAnswers, vts_tbVoterAnswers
				INNER JOIN vts_tbVoter 
					ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
				WHERE 
					vts_tbVoter.Validated<>0 AND  
					vts_tbVoterAnswers.AnswerID = AllAnswers.AnswerID AND 
					vts_tbVoterAnswers.VoterID NOT IN (SELECT VoterID FROM #FilteredVoters)
          END 
       ELSE
			IF @TextFilter is NULL
			BEGIN
			-- no text filter setup    
			--  Insert answers type fields
			INSERT INTO #FilteredVoters 
				SELECT vts_tbVoterAnswers.VoterID 
				FROM vts_tbVoterAnswers
				INNER JOIN vts_tbVoter 
					ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
				WHERE 
					vts_tbVoter.Validated<>0 AND  
					vts_tbVoterAnswers.AnswerID = @FilterAnswerID AND 
					vts_tbVoterAnswers.VoterID NOT IN (SELECT VoterID FROM #FilteredVoters)
			END    
			ELSE
			-- text filter setup
			INSERT INTO #FilteredVoters 
				SELECT vts_tbVoterAnswers.VoterID 
				FROM vts_tbVoterAnswers
				INNER JOIN vts_tbVoter 
					ON vts_tbVoter.VoterID =  vts_tbVoterAnswers.VoterID 
				WHERE 
					vts_tbVoter.Validated<>0 AND  
					vts_tbVoterAnswers.AnswerID = @FilterAnswerID AND 
					vts_tbVoterAnswers.AnswerText LIKE  '%'+replace(@TextFilter,' ','%')+'%'  AND
					vts_tbVoterAnswers.VoterID NOT IN (SELECT VoterID FROM #FilteredVoters)
      END 
	-- AND Operation
	ELSE
		IF @FilterAnswerID is NULL  AND @FilterRuleID is not NULL
		BEGIN 
		-- remove voters who did not have answered any answer of the question */
             DELETE FROM #FilteredVoters WHERE 
				VoterID NOT IN (
				SELECT DISTINCT vts_tbVoterAnswers.VoterID 
				FROM (SELECT AnswerID FROM vts_tbAnswer WHERE QuestionID=@FilterQuestionID) AS AllAnswers, vts_tbVoterAnswers  WHERE vts_tbVoterAnswers.AnswerID = AllAnswers.AnswerID)
            END 
		ELSE
		-- remove voters who did not have answered the right answer of the question */
		IF @TextFilter is NULL
		BEGIN
		-- no filter setup
			DELETE FROM #FilteredVoters WHERE 
				VoterID NOT IN (SELECT VoterID FROM vts_tbVoteranswers WHERE vts_tbVoterAnswers.AnswerID = @FilterAnswerID)
		END
        ELSE           
		-- filter on
			DELETE FROM #FilteredVoters WHERE 
				VoterID NOT IN (SELECT VoterID FROM vts_tbVoteranswers WHERE vts_tbVoterAnswers.AnswerID = @FilterAnswerID AND vts_tbVoterAnswers.AnswerText LIKE '%'+replace(@TextFilter,' ','%')+'%')
	FETCH NEXT FROM GetRules INTO @FilterRuleID,  @FilterAnswerID, @FilterQuestionID, @SurveyID, @TextFilter   
END 
CLOSE GetRules
DEALLOCATE GetRules
SELECT 
	AnswerID,
	AnswerText,
	 (select count(*) FROM vts_tbVoterAnswers 
	INNER JOIN #FilteredVoters ON vts_tbVoterAnswers.VoterID = #FilteredVoters.VoterID
	INNER JOIN vts_tbVoter ON vts_tbVoterAnswers.VoterID = vts_tbVoter.VoterID 
			WHERE Validated<>0 AND AnswerID = vts_tbAnswer.AnswerID AND
			DATEDIFF (d,@startDate,vts_tbVoter.VoteDate) >= 0 AND DATEDIFF (d,@endDate,vts_tbVoter.VoteDate) <= 0
			AND (vts_tbVoter.LanguageCode = @LanguageCode OR
			 ((@LanguageCode is null OR @LanguageCode = '') AND (LanguageCode is null OR LanguageCode ='')) OR
			(@LanguageCode = '-1' AND (LanguageCode is not null OR LanguageCode is null)))

	) as VoterCount,
	vts_tbAnswer.QuestionID,
	vts_tbAnswer.AnswerTypeID,
	SelectionModeId,
	TypeMode,
	RatePart
FROM vts_tbAnswer
INNER JOIN vts_tbQuestion
	ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
INNER JOIN vts_tbAnswerType
	ON vts_tbAnswerType.AnswerTypeID = vts_tbAnswer.AnswerTypeID
WHERE 
	vts_tbQuestion.QuestionID=@QuestionID OR vts_tbQuestion.parentQuestionID = @QuestionID
ORDER BY 
		case when @SortOrder = 'ANS' then vts_tbAnswer.DisplayOrder end ,
		case when @SortOrder = 'ASC' then (select count(*) FROM vts_tbVoterAnswers INNER JOIN #FilteredVoters ON vts_tbVoterAnswers.VoterID = #FilteredVoters.VoterID WHERE AnswerID = vts_tbAnswer.AnswerID) end ASC ,
		case when @SortOrder = 'DESC' then  (select count(*) FROM vts_tbVoterAnswers INNER JOIN #FilteredVoters ON vts_tbVoterAnswers.VoterID = #FilteredVoters.VoterID WHERE AnswerID = vts_tbAnswer.AnswerID) end DESC


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterForExport]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spVoterForExport] 
					@SurveyID int,
					@StartDate datetime,
					@EndDate datetime 

AS
	SELECT 
		vts_tbVoter.VoterID,
		SurveyID,
		VoteDate,
		IPSource,
		StartDate,
		Email,
		ContextUserName,
		LanguageCode
	FROM vts_tbVoter
	LEFT JOIN vts_tbVoterEmail 
		ON vts_tbVoter.VoterID = vts_tbVoterEmail.VoterID
	LEFT JOIN vts_tbEmail
		ON vts_tbEmail.EmailID = vts_tbVoterEmail.EmailId
	WHERE 
		vts_tbVoter.SurveyID = @SurveyID AND
		DATEDIFF (d,@startDate,vts_tbVoter.VoteDate) >= 0 AND DATEDIFF (d,@endDate,vts_tbVoter.VoteDate) <= 0

	SELECT DISTINCT va.VoterID, QuestionText, q.QuestionID,
	                q.QuestionIdText,q.Alias QuestionAlias
	FROM vts_tbVoterAnswers va	
	INNER JOIN vts_tbAnswer a
		ON a.AnswerID = va.AnswerID 
	INNER JOIN vts_tbQuestion q
		ON q.questionID = a.questionID
	INNER JOIN vts_tbVoter v
		ON v.VoterID = va.VoterID
	WHERE 
		v.SurveyID = @SurveyID AND
		DATEDIFF (d,@startDate,V.VoteDate) >= 0 AND DATEDIFF (d,@endDate,V.VoteDate) <= 0


	
	SELECT va.VoterID, va.SectionNumber, va.AnswerID, va.AnswerText as VoterAnswer, 
	q.QuestionID, q.DisplayOrder as QuestionDisplayOrder,
	a.AnswerText as Answer,a.DisplayOrder as AnswerDisplayOrder,
	A.AnswerAlias
	FROM vts_tbVoterAnswers va	
	INNER JOIN vts_tbAnswer a
		ON a.AnswerID = va.AnswerID 
	INNER JOIN vts_tbQuestion q
		ON q.questionID = a.QuestionID
	INNER JOIN vts_tbVoter v
		ON v.VoterID = va.VoterID
	WHERE 
		v.SurveyID = @SurveyID AND
		DATEDIFF (d,@startDate,V.VoteDate) >= 0 AND DATEDIFF (d,@endDate,V.VoteDate) <= 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetAnswers]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetAnswers] @VoterID int
AS
	SELECT 
		vts_tbVoter.VoterID,
		SurveyID,
		VoteDate,
		IPSource,
		Validated,
		StartDate,
		Email,
		ResumeUID,
		ProgressSaveDate,
		ResumeAtPageNumber,
		ResumeQuestionNumber,
		ContextUserName,
		LanguageCode
	FROM vts_tbVoter
	LEFT JOIN vts_tbVoterEmail 
		ON vts_tbVoter.VoterID = vts_tbVoterEmail.VoterID
	LEFT JOIN vts_tbEmail
		ON vts_tbEmail.EmailID = vts_tbVoterEmail.EmailId
	WHERE vts_tbVoter.VoterID = @VoterID
	
	SELECT va.VoterID, va.AnswerID, va.SectionNumber, va.AnswerText, a.QuestionID, ast.TypeMode
	FROM vts_tbVoterAnswers va	
	INNER JOIN vts_tbAnswer a
		ON a.AnswerID = va.AnswerID
	INNER JOIN vts_tbAnswerType ast
		ON ast.AnswerTypeID = a.AnswerTypeID
	WHERE VoterID = @VoterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetByUserName]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves the voter id which has the given user name from the DB
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetByUserName] @SurveyID int,  @UserName nvarchar(255)
					
AS
SELECT VoterID FROM vts_tbVoter WHERE SurveyID = @SurveyID AND ContextUserName = @UserName


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetDailyStat]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Returns the number of voters for a given date
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetDailyStat] @SurveyId int, @StatDay datetime AS

SELECT count(*) as TotalCount
FROM vts_tbVoter V
WHERE V.SurveyID = @SurveyID AND
	DATEDIFF (d, @StatDay,V.VoteDate) = 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetFullPivot]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Pivots the voter  entries into a column / row format
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to pivot answers
/// </param>
/// <param name="@CurrentPage">
/// Current page number
/// </param>
/// <param name="@PageSize">
/// Page size
/// </param>
/// <return>
/// returns the paged pivoted resultset
/// </return>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetFullPivot]
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@StartDate datetime,
				@EndDate datetime 
AS
DECLARE @TotalRecords int
CREATE TABLE #VoterEntries (VoterID int NOT NULL, EndDate dateTime, StartDate datetime, IP varchar(50), Score int)
-- Get voter range
INSERT INTO #VoterEntries (VoterID, EndDate, StartDate, IP, Score)  
	EXEC vts_spVoterGetPaged @SurveyID, @CurrentPage, @PageSize, @StartDate, @EndDate, @TotalRecords output
-- Start pivot
DECLARE @AnswerText nvarchar(4000)
DECLARE @QuestionText nvarchar(4000)
DECLARE @AnswerID varchar(16)
DECLARE @VoterID varchar(16)
DECLARE @BuildColumnSQL varchar(4000)
DECLARE @UpdateVotersRowSQL varchar(4000)
-- Get the answers text to generate the column
DECLARE AnswerColumnCursor  CURSOR FOR
	SELECT AnswerText, AnswerID, left(vts_tbQuestion.QuestionText, 64) FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
	INNER JOIN vts_tbAnswerType
		ON vts_tbAnswerType.AnswerTypeID = vts_tbAnswer.AnswerTypeID 	
	WHERE SurveyID = @SurveyID 
	ORDER BY vts_tbQuestion.DisplayOrder, vts_tbQuestion.QuestionID, vts_tbAnswer.DisplayOrder
OPEN AnswerColumnCursor
FETCH AnswerColumnCursor INTO @AnswerText, @AnswerID, @QuestionText
WHILE @@FETCH_STATUS = 0
BEGIN
	-- creates the new column
	SET @BuildColumnSQL = N'ALTER TABLE #VoterEntries ADD ['+@QuestionText+'_'+@AnswerText+'] NVARCHAR(4000)'
	EXEC (@BuildColumnSQL)
	-- Assign voters entry to the column
	SET @UpdateVotersRowSQL =N'UPDATE #VoterEntries SET ['+@QuestionText+'_'+@AnswerText+'] = (SELECT AnswerText FROM vts_tbVoterAnswers (nolock) WHERE AnswerID='+@AnswerID+' AND vts_tbVoterAnswers.VoterID=Voters.VoterID) FROM (SELECT VoterID FROM #VoterEntries (nolock)) as Voters WHERE #VoterEntries.VoterID=Voters.VoterID'
	EXEC (@UpdateVotersRowSQL)
	-- Assign voters choice
	SET @UpdateVotersRowSQL =N'UPDATE #VoterEntries SET ['+@QuestionText+'_'+@AnswerText+'] = (SELECT ''1'' FROM vts_tbVoterAnswers (nolock) INNER JOIN vts_tbAnswer ON vts_tbVoterAnswers.AnswerID = vts_tbAnswer.AnswerID WHERE vts_tbVoterAnswers.AnswerText is null AND vts_tbVoterAnswers.AnswerID='+@AnswerID+' AND vts_tbVoterAnswers.VoterID=Voters.VoterID) FROM (SELECT VoterID FROM #VoterEntries (nolock)) as Voters WHERE #VoterEntries.VoterID=Voters.VoterID AND #VoterEntries.['+@QuestionText+'_'+@AnswerText+'] is  null'
	EXEC (@UpdateVotersRowSQL)
	FETCH AnswerColumnCursor INTO @AnswerText, @AnswerID, @QuestionText
END
CLOSE AnswerColumnCursor
DEALLOCATE AnswerColumnCursor
SELECT *  FROM #VoterEntries
DROP TABLE #VoterEntries


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetMonthlyStats]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetMonthlyStats] 
				@SurveyID int, 
				@Month int, 
				@Year int 
AS
	SELECT
		 count(*) as VoterCount,
		 CAST(ROUND(CAST(VoteDate AS FLOAT),0,1) AS DATETIME) as VotesDate
	FROM vts_tbVoter 
	WHERE 
		SurveyID=@SurveyID AND
		Month(VoteDate) = @Month AND 
		Year(VoteDate) = @Year AND
		Validated<>0
	GROUP BY CAST(ROUND(CAST(VoteDate AS FLOAT),0,1) AS DATETIME)


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetPaged]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Return a paged results of available voters
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to pivot answers
/// </param>
/// <param name="@CurrentPage">
/// Current page number
/// </param>
/// <param name="@PageSize">
/// Page size
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetPaged]
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@StartDate datetime ,
				@EndDate datetime,
				@TotalRecords int OUTPUT
AS
-- Turn off count return.
Set NoCount On
-- Declare variables.
DECLARE @FirstRec int
DECLARE @LastRec int
-- Initialize variables.
SET @FirstRec = (@CurrentPage - 1) * @PageSize
SET @LastRec = (@CurrentPage * @PageSize + 1)
-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
CREATE TABLE #TempTable (RowId int IDENTITY PRIMARY KEY, VoterID int NOT NULL, [Date] dateTime, StartDate datetime, IP varchar(50), Score int)
--Fill the temp table with the reminders
INSERT INTO #TempTable (VoterID, [Date], StartDate, IP, Score)
	SELECT
		V.VoterID,
		V.VoteDate,
		V.StartDate,
		V.IPSource,
		(SELECT sum(ScorePoint) FROM vts_tbVoter 
			INNER JOIN vts_tbVoterAnswers
				ON vts_tbVoterAnswers.VoterID = vts_tbVoter.VoterID
			INNER JOIN vts_tbAnswer
				ON vts_tbAnswer.AnswerID = vts_tbVoterAnswers.AnswerID
			WHERE vts_tbVoter.VoterID = V.VoterID) AS Score
	FROM vts_tbVoter V
	WHERE 
		V.SurveyID = @SurveyID AND
		V.Validated <> 0 AND
		DATEDIFF (d,@startDate,V.VoteDate) >= 0 AND DATEDIFF (d,@endDate,V.VoteDate) <= 0
	ORDER BY V.VoterID DESC
SELECT
	@TotalRecords = count(*)
FROM vts_tbVoter
WHERE 
	SurveyID = @SurveyID AND
	Validated<>0 AND
	StartDate between @StartDate AND @EndDate
IF @PageSize = -1
BEGIN
	SELECT
		VoterID,
		[Date],
		StartDate,
		IP,
		Score
	FROM #TempTable
END
ELSE
BEGIN
	SELECT
		VoterID,
		[Date],
		StartDate,
		IP,
		Score
	FROM #TempTable
	WHERE 
		RowId > @FirstRec AND
		RowId < @LastRec
END
DROP TABLE #TempTable


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetPivotTextEntries]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Pivots the voter  entries into a column / row format
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey to pivot answers
/// </param>
/// <param name="@CurrentPage">
/// Current page number
/// </param>
/// <param name="@PageSize">
/// Page size
/// </param>
/// <return>
/// returns the paged pivoted resultset
/// </return>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetPivotTextEntries] 
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@StartDate datetime,
				@EndDate datetime
AS
DECLARE @TotalRecords int
CREATE TABLE #VoterEntries (VoterID int NOT NULL, [Date] dateTime, StartDate datetime, IP varchar(50), Score int)
-- Get voter range
INSERT INTO #VoterEntries (VoterID, [Date], StartDate, IP, Score)  
	EXEC vts_spVoterGetPaged @SurveyID, @CurrentPage, @PageSize, @StartDate, @EndDate, @TotalRecords output
-- Start pivot
DECLARE @AnswerText nvarchar(4000)
DECLARE @AnswerID varchar(16)
DECLARE @VoterID varchar(16)
DECLARE @BuildColumnSQL varchar(4000)
DECLARE @UpdateVotersRowSQL varchar(4000)
-- Get the fields to generate the column
DECLARE AnswerColumnCursor  CURSOR FOR
	SELECT AnswerText, AnswerID FROM vts_tbAnswer
	INNER JOIN vts_tbQuestion 
		ON vts_tbQuestion.QuestionID = vts_tbAnswer.QuestionID
	INNER JOIN vts_tbAnswerType
		ON vts_tbAnswerType.AnswerTypeID = vts_tbAnswer.AnswerTypeID 
	WHERE SurveyID = @SurveyID AND (TypeMode & 2 = 2 OR TypeMode & 8 =8 OR TypeMode & 4 =4)
	ORDER BY vts_tbQuestion.DisplayOrder, vts_tbQuestion.QuestionID, vts_tbAnswer.DisplayOrder
OPEN AnswerColumnCursor
FETCH AnswerColumnCursor INTO @AnswerText, @AnswerID
WHILE @@FETCH_STATUS = 0
BEGIN
	-- creates the new column
	SET @BuildColumnSQL = N'ALTER TABLE #VoterEntries ADD ['+@AnswerText+'_'+@AnswerID+'] NVARCHAR(4000)'
	EXEC (@BuildColumnSQL)
	-- Assign voters entry to the column
	SET @UpdateVotersRowSQL =N'UPDATE #VoterEntries SET ['+@AnswerText+'_'+@AnswerID+'] = (SELECT SUBSTRING(AnswerText,1, 40)  as AnswerText FROM vts_tbVoterAnswers  WHERE AnswerID='+@AnswerID+' AND SectionNumber=0 AND vts_tbVoterAnswers.VoterID=Voters.VoterID) FROM (SELECT VoterID FROM #VoterEntries (nolock)) as Voters WHERE #VoterEntries.VoterID=Voters.VoterID'
	EXEC (@UpdateVotersRowSQL)
	FETCH AnswerColumnCursor INTO @AnswerText, @AnswerID
END
CLOSE AnswerColumnCursor
DEALLOCATE AnswerColumnCursor
SELECT *, TotalRecords =@TotalRecords FROM #VoterEntries
DROP TABLE #VoterEntries


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterGetUnvalidatedCount]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  returns the number of unvalidated entries that 
/// have been saved
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterGetUnvalidatedCount]
				@SurveyID int
AS

SELECT count(voterid) as UnvalidatedCount FROM vts_tbVoter
WHERE SurveyID = @SurveyID AND Validated = 0


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterImport]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Adds a new voter
/// </summary>
*/

CREATE PROCEDURE [dbo].[vts_spVoterImport]
			@SurveyID int,
			@IPSource nvarchar(50),
			@VoteDate datetime,
			@StartDate datetime,
			@UID varchar(50)=null,
			@Validated bit =1, 
			@ResumeUID varchar(50) =null,
			@ProgressSaveDate datetime=null,
			@ResumeAtPageNumber int =null,
			@ResumeQuestionNumber int=null,
			@ResumeHighestPageNumber int=null,
			@LanguageCode nvarchar(50)=null,
			@VoterID int OUTPUT
AS
INSERT INTO vts_tbVoter
	(SurveyID,
	UID,
	IPSource , 
	VoteDate,
	StartDate,
	Validated,
	ResumeUID,
	ProgressSaveDate,
	ResumeAtPageNumber,
	ResumeQuestionNumber,
	ResumeHighestPageNumber,
	LanguageCode)
VALUES
	 (@SurveyID,
	@UID,
	@IPSource,
	@VoteDate,
	@StartDate,
	@Validated,
	@ResumeUID,
	@ProgressSaveDate,
	@ResumeAtPageNumber,
	@ResumeQuestionNumber,
	@ResumeHighestPageNumber,
	@LanguageCode)

set @VoterID = SCOPE_Identity()


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationAnsweredGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Get pending invited emails for the survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationAnsweredGetAll]
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10,
				@TotalRecords int OUTPUT
AS
-- Turn off count return.
Set NoCount On
-- Declare variables.
DECLARE @FirstRec int
DECLARE @LastRec int
-- Initialize variables.
SET @FirstRec = (@CurrentPage - 1) * @PageSize
SET @LastRec = (@CurrentPage * @PageSize + 1)
-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
CREATE TABLE #TempTable (RowId int IDENTITY PRIMARY KEY, SurveyID int NOT NULL, VoterID int NOT NULL, Email varchar(150), VoteDate DateTime)
--Fill the temp table with the reminders
INSERT INTO #TempTable (SurveyId, VoterID, Email, VoteDate)
	SELECT SurveyID, vts_tbVoter.VoterID, Email, VoteDate
	FROM vts_tbVoter
	INNER JOIN vts_tbVoterEmail 
		ON vts_tbVoterEmail.VoterID = vts_tbVoter.VoterID
	INNER JOIN vts_tbEmail
		ON vts_tbEmail.EmailID = vts_tbVoterEmail.EmailID
	WHERE SurveyID = @SurveyID AND Validated<>0
	ORDER BY VoteDate DESC
SELECT @TotalRecords = count(*) 
FROM vts_tbVoter
INNER JOIN vts_tbVoterEmail 
	ON vts_tbVoterEmail.VoterID = vts_tbVoter.VoterID
INNER JOIN vts_tbEmail
	ON vts_tbEmail.EmailID = vts_tbVoterEmail.EmailID
WHERE SurveyID = @SurveyID AND Validated<>0
SELECT SurveyID, VoterID, VoteDate, Email
FROM #TempTable
WHERE 
	RowId > @FirstRec AND
	RowId < @LastRec
DROP TABLE #TempTable


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Insert the given email in the invitation queue
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationQueueAddNew]
				@SurveyID int,
				@Email varchar(150),
				@AnonymousEntry bit,
				@UID varchar(50)
AS
DECLARE @EmailID int
exec vts_spEmailAddNew @email, @EmailID out
INSERT INTO vts_tbInvitationQueue(surveyId, emailid, uid, anonymousentry) VALUES (@SurveyID, @EmailID, @UID, @AnonymousEntry)


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueDelete]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Delete given invitiation
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationQueueDelete]
				@SurveyID int,
				@EmailID int
AS
DELETE FROM vts_tbInvitationQueue WHERE SurveyID = @SurveyID AND EmailID = @EmailID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueDeleteByEmail]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Delete given invitiation
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationQueueDeleteByEmail]
				@SurveyID int,
				@Email nvarchar(155)
AS
DELETE FROM vts_tbInvitationQueue 
WHERE SurveyID = @SurveyID AND EmailID IN (SELECT EmailID FROM vts_tbEmail WHERE Email = @Email)


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Get pending invited emails for the survey
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationQueueGetAll]
				@TotalRecords int OUTPUT,
				@SurveyID int,
				@CurrentPage int = 1,
				@PageSize int=10
AS
-- Turn off count return.
Set NoCount On
-- Output value.
SELECT @TotalRecords = count(*) FROM vts_tbInvitationQueue WHERE SurveyID = @SurveyID
-- Declare variables.
DECLARE @FirstRec int
DECLARE @LastRec int
-- Initialize variables.
SET @FirstRec = (@CurrentPage - 1) * @PageSize
SET @LastRec = (@CurrentPage * @PageSize + 1)
-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
CREATE TABLE #TempTable (RowId int IDENTITY PRIMARY KEY, SurveyID int NOT NULL, EmailID int NOT NULL, Email varchar(150), AnonymousEntry bit, UID varchar(50), RequestDate DateTime)
--Fill the temp table with the reminders
INSERT INTO #TempTable (SurveyId, EmailID, Email, AnonymousEntry, UID, RequestDate)
	SELECT SurveyId, vts_tbInvitationQueue.EmailID, Email, AnonymousEntry, UID, RequestDate
	FROM vts_tbInvitationQueue
	INNER JOIN vts_tbEmail
		ON vts_tbEmail.EmailID = vts_tbInvitationQueue.EmailID
	WHERE SurveyID = @SurveyID
	ORDER BY RequestDate DESC
-- SELECT @TotalRecords = count(*) FROM vts_tbInvitationQueue WHERE SurveyID = @SurveyID
SELECT SurveyId, EmailID, Email, AnonymousEntry, UID, RequestDate
FROM #TempTable
WHERE 
	RowId > @FirstRec AND
	RowId < @LastRec
DROP TABLE #TempTable

GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterInvitationQueueGetUId]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Insert the given email in the invitation queue
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterInvitationQueueGetUId]
				@SurveyID int,
				@Email varchar(150)
AS
SELECT Uid FROM vts_tbInvitationQueue 
INNER JOIN vts_tbEmail ON vts_tbEmail.EmailID = vts_tbInvitationQueue.EmailID  
WHERE vts_tbEmail.Email = @Email AND SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterResumeSession]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Returns the voter info and his answers for the 
/// session to resume
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterResumeSession] 
			@SurveyID int, 
			@ResumeUId nvarchar(40)
AS

DECLARE @VoterID int

	SELECT @VoterID = VoterID
	FROM vts_tbVoter
	WHERE SurveyID  = @SurveyID AND ResumeUId = @ResumeUId AND Validated = 0

	if @@rowcount > 0
	BEGIN
		exec vts_spVoterGetAnswers @VoterID
	END


GO
/****** Object:  StoredProcedure [dbo].[vts_spVotersDeleteForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Delete all  the voters
/// </summary>
/// <param name="@SurveyID">
/// ID of the survey that will reset its results
/// </param>
*/
CREATE PROCEDURE [dbo].[vts_spVotersDeleteForSurvey] @SurveyID int AS

DELETE fROM vts_tbFile WHERE FileID IN (
	SELECT FileId FROM vts_tbFile INNER JOIN vts_tbVoterAnswers ON 
		AnswerText like GroupGuid
	INNER JOIN vts_tbVoter ON
		vts_tbVoter.VoterID = vts_tbVoterAnswers.VoterID
	WHERE vts_tbVoter.SurveyID = @SurveyID)
DELETE FROM vts_tbVoter WHERE SurveyID = @SurveyID


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterUIdAddNew]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Removes the given UID from the queue and 
/// Insert the corresponding email for the voter if 
/// its state is not anonymous
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterUIdAddNew] 
				@VoterID int,
				@UId  varchar(40)
AS
DECLARE @EmailID int
SELECT @EmailID = EmailID 
FROM vts_tbInvitationQueue 
WHERE UID = @UID AND AnonymousEntry = 0
IF @@ROWCOUNT <> 0
BEGIN 
	INSERT INTO vts_tbVoterEmail(VoterID, EmailID) VALUES (@VoterID, @EmailID)
	UPDATE vts_tbVoter SET UId = @UId WHERE VoterID = @VoterID 
END
DELETE FROM vts_tbInvitationQueue WHERE UID = @UId


GO
/****** Object:  StoredProcedure [dbo].[vts_spVoterUpdateUserName]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Updates the voter id with the given user name
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spVoterUpdateUserName] @VoterID int,  @UserName nvarchar(255)
					
AS
UPDATE vts_tbVoter SET ContextUserName = @UserName WHERE VoterID = @VoterID


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsAddForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Add a new addin to the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsAddForSurvey] @SurveyId int, @AddInId int, @AddInOrder int
AS
BEGIN TRANSACTION AddAddIn
UPDATE vts_tbSurveyWebSecurity
SET AddInOrder = AddInOrder + 1 
WHERE SurveyID = @SurveyID AND AddInOrder >= @AddInOrder
INSERT INTO vts_tbSurveyWebSecurity (WebSecurityAddInID, SurveyId, AddInOrder, Disabled) VALUES (@AddInId, @SurveyID, @AddInOrder, 0)
COMMIT TRANSACTION AddAddIn


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsDeleteForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Deletes an addin from the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsDeleteForSurvey] @SurveyId int, @AddInId int
AS
DECLARE @AddInOrder int	
BEGIN TRANSACTION DeleteAddIn
-- Retrieve the current display order
SELECT @AddInOrder  = AddInOrder FROM vts_tbSurveyWebSecurity WHERE SurveyID = @SurveyID AND WebSecurityAddInID = @AddInId
-- Deletes the addin from the survey
DELETE FROM vts_tbSurveyWebSecurity WHERE SurveyID = @SurveyID AND WebSecurityAddInID = @AddInId
-- Updates the addin display order
UPDATE vts_tbSurveyWebSecurity
SET AddInOrder   = AddInOrder   - 1 
WHERE 
	SurveyID = @SurveyID AND
	AddInOrder >= @AddInOrder 
COMMIT TRANSACTION DeleteAddIn


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsDisableForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Disables an addin from the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsDisableForSurvey] @SurveyId int, @AddInId int
AS
-- Updates the addin status
UPDATE vts_tbSurveyWebSecurity
SET Disabled   = 1 
WHERE 
	SurveyID = @SurveyID AND WebSecurityAddInID = @AddInID


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsEnableForSurvey]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Enables an addin from the survey 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsEnableForSurvey] @SurveyId int, @AddInId int
AS
-- Updates the addin status
UPDATE vts_tbSurveyWebSecurity
SET Disabled   = 0 
WHERE 
	SurveyID = @SurveyID AND WebSecurityAddInID = @AddInID


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetAll]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsGetAll] @SurveyID int
AS
SELECT 
	vts_tbWebSecurityAddIn.WebSecurityAddInId,
	SurveyID,
	Disabled,
	BuiltIn,
	Description,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	AddInOrder
FROM vts_tbWebSecurityAddIn
INNER JOIN vts_tbSurveyWebSecurity
	ON vts_tbWebSecurityAddIn.WebSecurityAddInID = vts_tbSurveyWebSecurity.WebSecurityAddInID
WHERE SurveyID = @SurveyId  ORDER BY AddInOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetAvailableList]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsGetAvailableList] @SurveyID int
AS
SELECT WebSecurityAddInId, Description
FROM vts_tbWebSecurityAddIn
WHERE WebSecurityAddInId NOT IN (Select WebSecurityAddInId FROM vts_tbSurveyWebSecurity WHERE SurveyID = @SurveyID)


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsGetEnabled]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsGetEnabled] @SurveyID int
AS
SELECT 
	vts_tbWebSecurityAddIn.WebSecurityAddInId,
	SurveyID,
	Disabled,
	BuiltIn,
	Description,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	AddInOrder
FROM vts_tbWebSecurityAddIn
INNER JOIN vts_tbSurveyWebSecurity
	ON vts_tbWebSecurityAddIn.WebSecurityAddInID = vts_tbSurveyWebSecurity.WebSecurityAddInID
WHERE SurveyID = @SurveyId  AND Disabled=0 ORDER BY AddInOrder


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsMoveDown]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a survey's addin positions down 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsMoveDown] @SurveyId int, @AddInId int 
AS
DECLARE
	@OldAddInOrder int,
	@NewAddInOrder int,
	@NewAddInId int
SELECT 
	@OldAddInOrder = AddInOrder
FROM 
	vts_tbSurveyWebSecurity
WHERE
	SurveyID = @SurveyID AND
	WebSecurityAddInID = @AddInId
SELECT TOP 1  
	@NewAddInOrder = AddInOrder,
	@NewAddInId = WebSecurityAddInID
FROM 
	vts_tbSurveyWebSecurity
WHERE
	SurveyID = @SurveyID AND
	AddInOrder > @OldAddInOrder
	ORDER BY AddInOrder ASC
-- Is this already the last addin
IF @@ROWCOUNT <>0
BEGIN
	-- Move up previous addin
	UPDATE vts_tbSurveyWebSecurity
		set AddInOrder = @OldAddInOrder 
	WHERE 
		AddInOrder = @NewAddInOrder AND
		SurveyID = @SurveyID AND 
		WebSecurityAddInID = @NewAddInId
	-- Move down current addin
	UPDATE vts_tbSurveyWebSecurity
		set AddInOrder = @NewAddInOrder 
	WHERE SurveyID = @SurveyID AND WebSecurityAddInID = @AddInId
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsMoveUp]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
///  Moves a survey's addin positions up 
/// </summary>
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsMoveUp] @SurveyId int, @AddInId int 
AS
DECLARE
	@OldAddInOrder int,
	@NewAddInOrder int,
	@NewAddInId int
SELECT 
	@OldAddInOrder = AddInOrder
FROM 
	vts_tbSurveyWebSecurity
WHERE
	SurveyID = @SurveyID AND
	WebSecurityAddInID = @AddInId
SELECT TOP 1  
	@NewAddInOrder = AddInOrder,
	@NewAddInId = WebSecurityAddInID
FROM 
	vts_tbSurveyWebSecurity
WHERE
	SurveyID = @SurveyID AND
	AddInOrder < @OldAddInOrder
	ORDER BY AddInOrder DESC
-- Is this already the last addin
IF @@ROWCOUNT <>0
BEGIN
	-- Move up down addin
	UPDATE vts_tbSurveyWebSecurity
		set AddInOrder = @OldAddInOrder 
	WHERE 
		AddInOrder = @NewAddInOrder AND
		SurveyID = @SurveyID AND 
		WebSecurityAddInID = @NewAddInId
	-- Move up current addin
	UPDATE vts_tbSurveyWebSecurity
		set AddInOrder = @NewAddInOrder 
	WHERE SurveyID = @SurveyID AND WebSecurityAddInID = @AddInId
END


GO
/****** Object:  StoredProcedure [dbo].[vts_spWebSecurityAddInsSurveyGetDetails]    Script Date: 20-12-2013 13:14:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/
CREATE PROCEDURE [dbo].[vts_spWebSecurityAddInsSurveyGetDetails] @SurveyID int, @AddInID int
AS
SELECT 
	vts_tbWebSecurityAddIn.WebSecurityAddInId,
	SurveyID,
	Disabled,
	BuiltIn,
	Description,
	TypeNameSpace,
	TypeAssembly,
	TypeMode,
	AddInOrder
FROM vts_tbWebSecurityAddIn
INNER JOIN vts_tbSurveyWebSecurity
	ON vts_tbWebSecurityAddIn.WebSecurityAddInID = vts_tbSurveyWebSecurity.WebSecurityAddInID
WHERE SurveyID = @SurveyId AND vts_tbWebSecurityAddIn.WebSecurityAddInID = @AddInId


GO
