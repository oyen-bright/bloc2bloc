part of 'color_bloc.dart';

class ColorState extends Equatable {
  final Color color;
  const ColorState({
    required this.color,
  });

  @override
  // TODO: implement props
  List<Object> get props => [color];

  factory ColorState.initial() {
    return const ColorState(color: Colors.red);
  }

  @override
  bool get stringify => true;

  ColorState copyWith({
    Color? color,
  }) {
    return ColorState(
      color: color ?? this.color,
    );
  }
}
