import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_viewmodel.dart';

part 'deals_viewmodel.g.dart';

class DealsViewModel = _DealsViewModelBase with _$DealsViewModel;

abstract class _DealsViewModelBase extends BaseViewModel with Store {}
