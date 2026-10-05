import 'package:fpt_server_shared/fpt_server_shared.dart';
import 'package:test/test.dart';

void main() {
  const valid = AiPrompts(
    reviewIntro: 'You review code.',
    reviewConventions: '- be careful',
    translatorIntro: 'You translate.',
  );

  test('a complete set is valid', () => expect(valid.problems(), isEmpty));

  test('an empty field is named', () {
    final problems = valid.copyWith(reviewConventions: '  ').problems();
    expect(problems, hasLength(1));
    expect(problems.single, startsWith('reviewConventions'));
  });

  test('a field over the limit is refused', () {
    final problems = valid
        .copyWith(translatorIntro: 'x' * (AiPrompts.maxLength + 1))
        .problems();
    expect(problems.single, contains('translatorIntro'));
  });

  test('round-trips through snake_case JSON', () {
    expect(valid.toJson()['review_intro'], 'You review code.');
    expect(AiPrompts.fromJson(valid.toJson()), valid);
  });
}
