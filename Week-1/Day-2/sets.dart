void main(List<String> args) {
  // Sets are a unique collection of unordered items
  var torah = {
    'Genesis',
    'Exodus',
    'Leviticus',
    'Numbers',
    'Deuetrmony',
  };

  print(torah);

  var postTorah = torah.add('Joshua');

  print(postTorah);

  torah.addAll(['Judges', 'Ruth', '1 Samuel']);
  print(torah);
}
