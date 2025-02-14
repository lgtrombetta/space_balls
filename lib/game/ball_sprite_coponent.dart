import 'package:flame/components.dart';
import 'package:space_balls/model/ball_object.dart';

class BallSpriteComponent extends SpriteComponent {
  final BallObject ballObject;

  BallSpriteComponent({
    required this.ballObject,
    super.sprite,
  }) : super(
          size: Vector2.all(ballObject.radius * 2),
        );

  @override
  void update(double dt) {
    super.update(dt);
    position = ballObject.position - size / 2;
  }
}
