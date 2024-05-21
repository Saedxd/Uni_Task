// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreen_Event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowListNotes extends ShowListNotes {
  @override
  final List<Note>? Notes;
  @override
  final List<Note>? Filtered_Notes;

  factory _$ShowListNotes([void Function(ShowListNotesBuilder)? updates]) =>
      (new ShowListNotesBuilder()..update(updates))._build();

  _$ShowListNotes._({this.Notes, this.Filtered_Notes}) : super._();

  @override
  ShowListNotes rebuild(void Function(ShowListNotesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowListNotesBuilder toBuilder() => new ShowListNotesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowListNotes &&
        Notes == other.Notes &&
        Filtered_Notes == other.Filtered_Notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Notes.hashCode);
    _$hash = $jc(_$hash, Filtered_Notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowListNotes')
          ..add('Notes', Notes)
          ..add('Filtered_Notes', Filtered_Notes))
        .toString();
  }
}

class ShowListNotesBuilder
    implements Builder<ShowListNotes, ShowListNotesBuilder> {
  _$ShowListNotes? _$v;

  List<Note>? _Notes;
  List<Note>? get Notes => _$this._Notes;
  set Notes(List<Note>? Notes) => _$this._Notes = Notes;

  List<Note>? _Filtered_Notes;
  List<Note>? get Filtered_Notes => _$this._Filtered_Notes;
  set Filtered_Notes(List<Note>? Filtered_Notes) =>
      _$this._Filtered_Notes = Filtered_Notes;

  ShowListNotesBuilder();

  ShowListNotesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Notes = $v.Notes;
      _Filtered_Notes = $v.Filtered_Notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowListNotes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowListNotes;
  }

  @override
  void update(void Function(ShowListNotesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowListNotes build() => _build();

  _$ShowListNotes _build() {
    final _$result = _$v ??
        new _$ShowListNotes._(Notes: Notes, Filtered_Notes: Filtered_Notes);
    replace(_$result);
    return _$result;
  }
}

class _$SelectNote extends SelectNote {
  @override
  final int? Index;

  factory _$SelectNote([void Function(SelectNoteBuilder)? updates]) =>
      (new SelectNoteBuilder()..update(updates))._build();

  _$SelectNote._({this.Index}) : super._();

  @override
  SelectNote rebuild(void Function(SelectNoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectNoteBuilder toBuilder() => new SelectNoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectNote && Index == other.Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectNote')..add('Index', Index))
        .toString();
  }
}

class SelectNoteBuilder implements Builder<SelectNote, SelectNoteBuilder> {
  _$SelectNote? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  SelectNoteBuilder();

  SelectNoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectNote other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectNote;
  }

  @override
  void update(void Function(SelectNoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectNote build() => _build();

  _$SelectNote _build() {
    final _$result = _$v ?? new _$SelectNote._(Index: Index);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteNote extends DeleteNote {
  @override
  final int? Index;

  factory _$DeleteNote([void Function(DeleteNoteBuilder)? updates]) =>
      (new DeleteNoteBuilder()..update(updates))._build();

  _$DeleteNote._({this.Index}) : super._();

  @override
  DeleteNote rebuild(void Function(DeleteNoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNoteBuilder toBuilder() => new DeleteNoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNote && Index == other.Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteNote')..add('Index', Index))
        .toString();
  }
}

class DeleteNoteBuilder implements Builder<DeleteNote, DeleteNoteBuilder> {
  _$DeleteNote? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  DeleteNoteBuilder();

  DeleteNoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNote other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNote;
  }

  @override
  void update(void Function(DeleteNoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNote build() => _build();

  _$DeleteNote _build() {
    final _$result = _$v ?? new _$DeleteNote._(Index: Index);
    replace(_$result);
    return _$result;
  }
}

class _$SearchNotes extends SearchNotes {
  @override
  final String? KeyWord;

  factory _$SearchNotes([void Function(SearchNotesBuilder)? updates]) =>
      (new SearchNotesBuilder()..update(updates))._build();

  _$SearchNotes._({this.KeyWord}) : super._();

  @override
  SearchNotes rebuild(void Function(SearchNotesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchNotesBuilder toBuilder() => new SearchNotesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchNotes && KeyWord == other.KeyWord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, KeyWord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchNotes')
          ..add('KeyWord', KeyWord))
        .toString();
  }
}

class SearchNotesBuilder implements Builder<SearchNotes, SearchNotesBuilder> {
  _$SearchNotes? _$v;

  String? _KeyWord;
  String? get KeyWord => _$this._KeyWord;
  set KeyWord(String? KeyWord) => _$this._KeyWord = KeyWord;

  SearchNotesBuilder();

  SearchNotesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _KeyWord = $v.KeyWord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchNotes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchNotes;
  }

  @override
  void update(void Function(SearchNotesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchNotes build() => _build();

  _$SearchNotes _build() {
    final _$result = _$v ?? new _$SearchNotes._(KeyWord: KeyWord);
    replace(_$result);
    return _$result;
  }
}

class _$ClearNoteSelection extends ClearNoteSelection {
  @override
  final int? Index;

  factory _$ClearNoteSelection(
          [void Function(ClearNoteSelectionBuilder)? updates]) =>
      (new ClearNoteSelectionBuilder()..update(updates))._build();

  _$ClearNoteSelection._({this.Index}) : super._();

  @override
  ClearNoteSelection rebuild(
          void Function(ClearNoteSelectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearNoteSelectionBuilder toBuilder() =>
      new ClearNoteSelectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearNoteSelection && Index == other.Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClearNoteSelection')
          ..add('Index', Index))
        .toString();
  }
}

class ClearNoteSelectionBuilder
    implements Builder<ClearNoteSelection, ClearNoteSelectionBuilder> {
  _$ClearNoteSelection? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  ClearNoteSelectionBuilder();

  ClearNoteSelectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClearNoteSelection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearNoteSelection;
  }

  @override
  void update(void Function(ClearNoteSelectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearNoteSelection build() => _build();

  _$ClearNoteSelection _build() {
    final _$result = _$v ?? new _$ClearNoteSelection._(Index: Index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
