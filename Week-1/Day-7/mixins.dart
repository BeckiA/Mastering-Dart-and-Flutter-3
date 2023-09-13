// mixins: Generally mixins are a class of methods for dart(We use mixins to write methods)
// Mixins are a way to reuse a class's code in multiple class hierarchies.
mixin WalkMixin {
  void walk() {
    print("I can walk");
  }
}

mixin SwimMixin {
  void swim() {
    print("I can Swim");
  }
}

class Animal with WalkMixin, SwimMixin {
  void introduce() {
    print('Hey, I\'m an animal');
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  animal.introduce();
  animal.walk();
  animal.swim();
}
