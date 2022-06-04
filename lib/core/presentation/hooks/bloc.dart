import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

T useBloc<T extends BlocBase<S>, S>(T Function() blocFactory,
    [List<Object> keys = const <Object>[]]) {
  return use(_BlocHook<T, S>(
    blocFactory,
    keys: keys,
  ));
}

class _BlocHook<T extends BlocBase<S>, S> extends Hook<T> {
  const _BlocHook(
    this.blocFactory, {
    List<Object> keys = const <Object>[],
  }) : super(keys: keys);
  final T Function() blocFactory;

  @override
  _BlocHookState<T, S> createState() => _BlocHookState<T, S>();
}

class _BlocHookState<T extends BlocBase<S>, S>
    extends HookState<T, _BlocHook<T, S>> {
  late T bloc;

  @override
  void initHook() {
    super.initHook();
    bloc = hook.blocFactory();
  }

  @override
  T build(BuildContext context) {
    return bloc;
  }

  @override
  void dispose() {
    (bloc as dynamic).close();
    super.dispose();
  }
}
