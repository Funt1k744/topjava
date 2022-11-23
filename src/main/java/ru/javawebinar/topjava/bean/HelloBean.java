package ru.javawebinar.topjava.bean;

import java.util.Arrays;
import java.util.List;

public class HelloBean {
    public String name;
    public String age;
    public String sex;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "HelloBean{" +
                "name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }

    public List< String> getFriendsAsList (){
        return Arrays.asList(getFriendsAsArray ());
    }

    public String[] getFriendsAsArray(){
        return new String[]{"Васька", "Петька", "Ленка"};
    }
}
