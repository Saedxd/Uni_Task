// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreen_State.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeScreenState extends HomeScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final int? number;
  @override
  final List<Note>? Notes;
  @override
  final List<Note>? FilteredNotes;
  @override
  final List<bool>? Note_Selected;
  @override
  final int? Selected_Index;

  factory _$HomeScreenState([void Function(HomeScreenStateBuilder)? updates]) =>
      (new HomeScreenStateBuilder()..update(updates))._build();

  _$HomeScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.number,
      this.Notes,
      this.FilteredNotes,
      this.Note_Selected,
      this.Selected_Index})
      : super._();

  @override
  HomeScreenState rebuild(void Function(HomeScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeScreenStateBuilder toBuilder() =>
      new HomeScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        number == other.number &&
        Notes == other.Notes &&
        FilteredNotes == other.FilteredNotes &&
        Note_Selected == other.Note_Selected &&
        Selected_Index == other.Selected_Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, Notes.hashCode);
    _$hash = $jc(_$hash, FilteredNotes.hashCode);
    _$hash = $jc(_$hash, Note_Selected.hashCode);
    _$hash = $jc(_$hash, Selected_Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('number', number)
          ..add('Notes', Notes)
          ..add('FilteredNotes', FilteredNotes)
          ..add('Note_Selected', Note_Selected)
          ..add('Selected_Index', Selected_Index))
        .toString();
  }
}

class HomeScreenStateBuilder
    implements Builder<HomeScreenState, HomeScreenStateBuilder> {
  _$HomeScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  List<Note>? _Notes;
  List<Note>? get Notes => _$this._Notes;
  set Notes(List<Note>? Notes) => _$this._Notes = Notes;

  List<Note>? _FilteredNotes;
  List<Note>? get FilteredNotes => _$this._FilteredNotes;
  set FilteredNotes(List<Note>? FilteredNotes) =>
      _$this._FilteredNotes = FilteredNotes;

  List<bool>? _Note_Selected;
  List<bool>? get Note_Selected => _$this._Note_Selected;
  set Note_Selected(List<bool>? Note_Selected) =>
      _$this._Note_Selected = Note_Selected;

  int? _Selected_Index;
  int? get Selected_Index => _$this._Selected_Index;
  set Selected_Index(int? Selected_Index) =>
      _$this._Selected_Index = Selected_Index;

  HomeScreenStateBuilder();

  HomeScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _number = $v.number;
      _Notes = $v.Notes;
      _FilteredNotes = $v.FilteredNotes;
      _Note_Selected = $v.Note_Selected;
      _Selected_Index = $v.Selected_Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeScreenState;
  }

  @override
  void update(void Function(HomeScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeScreenState build() => _build();

  _$HomeScreenState _build() {
    final _$result = _$v ??
        new _$HomeScreenState._(
            error: error,
            isLoading: isLoading,
            success: success,
            number: number,
            Notes: Notes,
            FilteredNotes: FilteredNotes,
            Note_Selected: Note_Selected,
            Selected_Index: Selected_Index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
