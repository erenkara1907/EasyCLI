// ignore_for_file: lines_longer_than_80_chars

import 'package:args/command_runner.dart';
import '../samples/implementations/core/config/app_localization_service.dart';
import '../samples/implementations/core/config/app_strings.dart';
import '../samples/implementations/core/config/en_US/en_us_translation.dart';
import '../samples/implementations/core/config/tr_TR/tr_tr_translation.dart';
import '../samples/implementations/core/constants/app_icon.dart';
import '../samples/implementations/core/constants/app_icon.svg.dart';
import '../samples/implementations/core/constants/app_regex.dart';
import '../samples/implementations/core/constants/enum/api_call_status_enum.dart';
import '../samples/implementations/core/extension.dart';
import '../samples/implementations/core/init/service/base_service.dart';
import '../samples/implementations/core/init/service/dio_service.dart';
import '../samples/implementations/core/init/view/base/base_state.dart';
import '../samples/implementations/core/init/view/base/base_stateless.dart';
import '../samples/implementations/core/init/view/theme/app_fonts.dart';
import '../samples/implementations/core/init/view/theme/app_style.dart';
import '../samples/implementations/core/init/view/theme/dark_theme_color.dart';
import '../samples/implementations/core/init/view/theme/light_theme_color.dart';
import '../samples/implementations/core/init/view/theme/theme.dart';
import '../samples/implementations/core/init/view/widget/animator/app_widget_animator.dart';
import '../samples/implementations/core/init/view/widget/button/app_button.dart';
import '../samples/implementations/core/init/view/widget/card/app_card.dart';
import '../samples/implementations/core/init/view/widget/checkbox/app_checkbox.dart';
import '../samples/implementations/core/init/view/widget/form/app_form.dart';
import '../samples/implementations/core/init/view/widget/slider/app_slider.dart';
import '../samples/implementations/core/init/view/widget/sncakbar/app_snackbar.dart';
import '../samples/implementations/core/init/view/widget/textformfield/app_textformfield.dart';
import '../samples/implementations/core/init/viewmodel/base_viewmodel.dart';
import '../samples/implementations/core/language.dart';
import '../samples/implementations/core/logger.dart';
import '../samples/implementations/core/manager/auth/auth_manager.dart';
import '../samples/implementations/core/manager/cache/cache_manager.dart';
import '../samples/implementations/core/manager/cache/shared_pref.dart';
import '../samples/implementations/core/model.dart';
import '../samples/implementations/feature/components/button/app_text_button.dart';
import '../samples/implementations/product/model/product_model.dart';
import '../samples/implementations/product/service/product_service.dart';
import '../samples/implementations/product/view/product_state_view.dart';
import '../samples/implementations/product/view/product_stateless_view.dart';
import '../samples/implementations/product/viewmodel/product_viewmodel.dart';
import '../utils/directory.dart';
import '../utils/logs.dart';

/// [GenerateCommand] is used to generate new files for a feature
class GenerateCommand extends Command {
  final String _name = 'generate';
  final String _description =
      'Generate folders and files according to folder by feature structure.';

  /// Constructor for the generate files command
  ///
  /// [name] is a required argument that represents the name of the feature
  /// to be created
  GenerateCommand() {
    argParser.addOption(
      'name',
      abbr: 'n',
      mandatory: true,
      help: 'Name of the feature to be created.',
    );
  }

  @override
  String get description => _description;

  @override
  String get name => _name;

  @override
  void run() {
    _generateItems();
    LogService.success('Feature ${argResults!['name']} created successfully');
  }

  void _generateItems({bool dryRun = false}) {
    var dir = 'feature';
    if (dryRun) {
      dir = 'example';
    }


    Model(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    Language(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    Extension(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    CacheManager(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AuthManager(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    BaseService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    DioService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    BaseViewModel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    BaseState(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    BaseStateless(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    Theme(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppButton(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppCard(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppCheckbox(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppForm(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppSlider(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppTextFormField(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppIcon(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppIconSvg(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppRegex(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppTextButton(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ProductModel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ProductService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ProductStateView(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ProductStatelessView(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ProductViewmodel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppLogger(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    SharedPref(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppWidgetAnimator(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppSnackbar(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppFonts(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppStyle(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    DarkThemeColor(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    LightThemeColor(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    ApiCallStatusEnum(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppStrings(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    AppLocalizationService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    TrTrTranslation(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();

    EnUsTranslation(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
  }
}
