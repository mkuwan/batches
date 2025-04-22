class Person {
    String name;
    int age;
    Person(String name, int age) {
        this.name = name;
        this.age = age;
    }
    void introduce() {
        System.out.println("私は" + name + "、" + age + "歳です。");
    }
}
public class learn_java008 {
    public static void main(String[] args) {
        Person p1 = new Person("山田", 25);
        Person p2 = new Person("鈴木", 30);
        p1.introduce();
        p2.introduce();
    }
}
