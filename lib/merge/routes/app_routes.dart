import 'package:flutter/material.dart';
import '../presentation/about_me_screen/about_me_screen.dart';
import '../presentation/add_a_job_screen/add_a_job_screen.dart';
import '../presentation/add_appreciation_screen/add_appreciation_screen.dart';
import '../presentation/add_education_screen/add_education_screen.dart';
import '../presentation/add_language_screen/add_language_screen.dart';
import '../presentation/add_post_screen/add_post_screen.dart';
import '../presentation/add_resume_screen/add_resume_screen.dart';
import '../presentation/add_resume_vtwo_screen/add_resume_vtwo_screen.dart';
import '../presentation/add_skill_one_screen/add_skill_one_screen.dart';
import '../presentation/add_skill_screen/add_skill_screen.dart';
import '../presentation/add_work_experience_screen/add_work_experience_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/change_education_screen/change_education_screen.dart';
import '../presentation/change_work_experience_screen/change_work_experience_screen.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/choose_job_type_screen/choose_job_type_screen.dart';
import '../presentation/company_one_screen/company_one_screen.dart';
import '../presentation/company_screen/company_screen.dart';
import '../presentation/company_two_tab_container_screen/company_two_tab_container_screen.dart';
import '../presentation/creat_job_or_post_screen/creat_job_or_post_screen.dart';
import '../presentation/description_one_screen/description_one_screen.dart';
import '../presentation/description_screen/description_screen.dart';
import '../presentation/edit_add_a_job_screen/edit_add_a_job_screen.dart';
import '../presentation/edit_appreciation_screen/edit_appreciation_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/field_of_study_screen/field_of_study_screen.dart';
import '../presentation/filter_one_screen/filter_one_screen.dart';
import '../presentation/filter_screen/filter_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/institution_name_screen/institution_name_screen.dart';
import '../presentation/job_position_screen/job_position_screen.dart';
import '../presentation/jobs_tab_container_screen/jobs_tab_container_screen.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/level_of_education_screen/level_of_education_screen.dart';
import '../presentation/location_screen/location_screen.dart';
import '../presentation/log_out_screen/log_out_screen.dart';
import '../presentation/message_screen/message_screen.dart';
import '../presentation/my_connection_screen/my_connection_screen.dart';
import '../presentation/my_profile_vone_screen/my_profile_vone_screen.dart';
import '../presentation/no_message_screen/no_message_screen.dart';
import '../presentation/no_notifications_screen/no_notifications_screen.dart';
import '../presentation/no_results_found_screen/no_results_found_screen.dart';
import '../presentation/no_savings_screen/no_savings_screen.dart';
import '../presentation/notifications_one_screen/notifications_one_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/notifications_two_screen/notifications_two_screen.dart';
import '../presentation/options_screen/options_screen.dart';
import '../presentation/post_tab_container_screen/post_tab_container_screen.dart';
import '../presentation/posting_container_screen/posting_container_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/save_job_screen/save_job_screen.dart';
import '../presentation/search_language_screen/search_language_screen.dart';
import '../presentation/search_tab_container_screen/search_tab_container_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/shared_a_job_screen/shared_a_job_screen.dart';
import '../presentation/skill_8_screen/skill_8_screen.dart';
import '../presentation/specialization_screen/specialization_screen.dart';
import '../presentation/start_date_screen/start_date_screen.dart';
import '../presentation/successful_screen/successful_screen.dart';
import '../presentation/update_password_screen/update_password_screen.dart';
import '../presentation/upload_cv_one_screen/upload_cv_one_screen.dart';
import '../presentation/upload_cv_screen/upload_cv_screen.dart';
import '../presentation/upload_resume_screen/upload_resume_screen.dart';
import '../presentation/your_application_screen/your_application_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String descriptionScreen = '/description_screen';

  static const String descriptionOneScreen = '/description_one_screen';

  static const String companyScreen = '/company_screen';

  static const String companyTwoPage = '/company_two_page';

  static const String companyTwoTabContainerScreen =
      '/company_two_tab_container_screen';

  static const String uploadCvScreen = '/upload_cv_screen';

  static const String uploadCvOneScreen = '/upload_cv_one_screen';

  static const String successfulScreen = '/successful_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String specializationScreen = '/specialization_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String filterScreen = '/filter_screen';

  static const String noResultsFoundScreen = '/no_results_found_screen';

  static const String postingPage = '/posting_page';

  static const String postingContainerScreen = '/posting_container_screen';

  static const String myConnectionScreen = '/my_connection_screen';

  static const String aboutUsPage = '/about_us_page';

  static const String postPage = '/post_page';

  static const String postTabContainerScreen = '/post_tab_container_screen';

  static const String jobsPage = '/jobs_page';

  static const String jobsTabContainerScreen = '/jobs_tab_container_screen';

  static const String creatJobOrPostScreen = '/creat_job_or_post_screen';

  static const String addPostScreen = '/add_post_screen';

  static const String addAJobScreen = '/add_a_job_screen';

  static const String editAddAJobScreen = '/edit_add_a_job_screen';

  static const String jobPositionScreen = '/job_position_screen';

  static const String locationScreen = '/location_screen';

  static const String companyOneScreen = '/company_one_screen';

  static const String chooseJobTypeScreen = '/choose_job_type_screen';

  static const String sharedAJobScreen = '/shared_a_job_screen';

  static const String messageScreen = '/message_screen';

  static const String chatScreen = '/chat_screen';

  static const String noMessageScreen = '/no_message_screen';

  static const String saveJobScreen = '/save_job_screen';

  static const String optionsScreen = '/options_screen';

  static const String noSavingsScreen = '/no_savings_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String notificationsTwoScreen = '/notifications_two_screen';

  static const String yourApplicationScreen = '/your_application_screen';

  static const String noNotificationsScreen = '/no_notifications_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String aboutMeScreen = '/about_me_screen';

  static const String addWorkExperienceScreen = '/add_work_experience_screen';

  static const String changeWorkExperienceScreen =
      '/change_work_experience_screen';

  static const String addEducationScreen = '/add_education_screen';

  static const String changeEducationScreen = '/change_education_screen';

  static const String levelOfEducationScreen = '/level_of_education_screen';

  static const String institutionNameScreen = '/institution_name_screen';

  static const String fieldOfStudyScreen = '/field_of_study_screen';

  static const String startDateScreen = '/start_date_screen';

  static const String addSkillScreen = '/add_skill_screen';

  static const String addSkillOneScreen = '/add_skill_one_screen';

  static const String skill8Screen = '/skill_8_screen';

  static const String languageScreen = '/language_screen';

  static const String searchLanguageScreen = '/search_language_screen';

  static const String addLanguageScreen = '/add_language_screen';

  static const String addAppreciationScreen = '/add_appreciation_screen';

  static const String editAppreciationScreen = '/edit_appreciation_screen';

  static const String addResumeScreen = '/add_resume_screen';

  static const String uploadResumeScreen = '/upload_resume_screen';

  static const String myProfileVoneScreen = '/my_profile_vone_screen';

  static const String addResumeVtwoScreen = '/add_resume_vtwo_screen';

  static const String settingsScreen = '/settings_screen';

  static const String updatePasswordScreen = '/update_password_screen';

  static const String logOutScreen = '/log_out_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    descriptionScreen: (context) => DescriptionScreen(),
    descriptionOneScreen: (context) => DescriptionOneScreen(),
    companyScreen: (context) => CompanyScreen(),
    companyTwoTabContainerScreen: (context) => CompanyTwoTabContainerScreen(),
    uploadCvScreen: (context) => UploadCvScreen(),
    uploadCvOneScreen: (context) => UploadCvOneScreen(),
    successfulScreen: (context) => SuccessfulScreen(),
    searchTabContainerScreen: (context) => SearchTabContainerScreen(),
    specializationScreen: (context) => SpecializationScreen(),
    filterOneScreen: (context) => FilterOneScreen(),
    filterScreen: (context) => FilterScreen(),
    noResultsFoundScreen: (context) => NoResultsFoundScreen(),
    postingContainerScreen: (context) => PostingContainerScreen(),
    myConnectionScreen: (context) => MyConnectionScreen(),
    postTabContainerScreen: (context) => PostTabContainerScreen(),
    jobsTabContainerScreen: (context) => JobsTabContainerScreen(),
    creatJobOrPostScreen: (context) => CreatJobOrPostScreen(),
    addPostScreen: (context) => AddPostScreen(),
    addAJobScreen: (context) => AddAJobScreen(),
    editAddAJobScreen: (context) => EditAddAJobScreen(),
    jobPositionScreen: (context) => JobPositionScreen(),
    locationScreen: (context) => LocationScreen(),
    companyOneScreen: (context) => CompanyOneScreen(),
    chooseJobTypeScreen: (context) => ChooseJobTypeScreen(),
    sharedAJobScreen: (context) => SharedAJobScreen(),
    messageScreen: (context) => MessageScreen(),
    chatScreen: (context) => ChatScreen(),
    noMessageScreen: (context) => NoMessageScreen(),
    saveJobScreen: (context) => SaveJobScreen(),
    optionsScreen: (context) => OptionsScreen(),
    noSavingsScreen: (context) => NoSavingsScreen(),
    notificationsOneScreen: (context) => NotificationsOneScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    notificationsTwoScreen: (context) => NotificationsTwoScreen(),
    yourApplicationScreen: (context) => YourApplicationScreen(),
    noNotificationsScreen: (context) => NoNotificationsScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    aboutMeScreen: (context) => AboutMeScreen(),
    addWorkExperienceScreen: (context) => AddWorkExperienceScreen(),
    changeWorkExperienceScreen: (context) => ChangeWorkExperienceScreen(),
    addEducationScreen: (context) => AddEducationScreen(),
    changeEducationScreen: (context) => ChangeEducationScreen(),
    levelOfEducationScreen: (context) => LevelOfEducationScreen(),
    institutionNameScreen: (context) => InstitutionNameScreen(),
    fieldOfStudyScreen: (context) => FieldOfStudyScreen(),
    startDateScreen: (context) => StartDateScreen(),
    addSkillScreen: (context) => AddSkillScreen(),
    addSkillOneScreen: (context) => AddSkillOneScreen(),
    skill8Screen: (context) => Skill8Screen(),
    languageScreen: (context) => LanguageScreen(),
    searchLanguageScreen: (context) => SearchLanguageScreen(),
    addLanguageScreen: (context) => AddLanguageScreen(),
    addAppreciationScreen: (context) => AddAppreciationScreen(),
    editAppreciationScreen: (context) => EditAppreciationScreen(),
    addResumeScreen: (context) => AddResumeScreen(),
    uploadResumeScreen: (context) => UploadResumeScreen(),
    myProfileVoneScreen: (context) => MyProfileVoneScreen(),
    addResumeVtwoScreen: (context) => AddResumeVtwoScreen(),
    settingsScreen: (context) => SettingsScreen(),
    updatePasswordScreen: (context) => UpdatePasswordScreen(),
    logOutScreen: (context) => LogoutScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
