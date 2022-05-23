import 'package:args/command_runner.dart';
import '../samples/implementations/core/constants/app_icon.dart';
import '../samples/implementations/core/constants/app_icon.svg.dart';
import '../samples/implementations/core/constants/app_regex.dart';
import '../samples/implementations/core/extension.dart';
import '../samples/implementations/core/init/service/base_service.dart';
import '../samples/implementations/core/init/service/dio_service.dart';
import '../samples/implementations/core/init/view/base/base_state.dart';
import '../samples/implementations/core/init/view/base/base_stateless.dart';
import '../samples/implementations/core/init/view/theme/theme.dart';
import '../samples/implementations/core/init/view/widget/button/app_button.dart';
import '../samples/implementations/core/init/view/widget/card/app_card.dart';
import '../samples/implementations/core/init/view/widget/checkbox/app_checkbox.dart';
import '../samples/implementations/core/init/view/widget/form/app_form.dart';
import '../samples/implementations/core/init/view/widget/slider/app_slider.dart';
import '../samples/implementations/core/init/view/widget/textformfield/app_textformfield.dart';
import '../samples/implementations/core/init/viewmodel/base_viewmodel.dart';
import '../samples/implementations/core/language.dart';
import '../samples/implementations/core/manager/auth/auth_manager.dart';
import '../samples/implementations/core/manager/cache/cache_manager.dart';
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

    // ignore: lines_longer_than_80_chars
    Model(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    Language(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    Extension(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    CacheManager(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AuthManager(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    BaseService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    DioService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    BaseViewModel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    BaseState(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    BaseStateless(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    Theme(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppButton(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppCard(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppCheckbox(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppForm(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppSlider(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppTextFormField(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppIcon(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppIconSvg(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppRegex(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    AppTextButton(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    ProductModel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    ProductService(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    ProductStateView(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    ProductStatelessView(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
    // ignore: lines_longer_than_80_chars
    ProductViewmodel(DirectoryService.paths[dir]!, argResults!['name'].toString())..create();
  }
}
