import 'package:flutter/material.dart';

class People {
  late String image, title, description;
  late int price, age, id;
  late Color color;
  People({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.age,
    required this.color,
  });
}

List<People> peoples = [
  People(
      id: 1,
      title: "Aidan Carter",
      price: 1500,
      age: 18,
      description: dummyText,
      image: 'images/picc.png',
      color: Color(0xFF3D82AE)),
  People(
      id: 2,
      title: "Ava Williams",
      price: 2000,
      age: 18,
      description: dummyTextt,
      image: 'images/friendgg18.png',
      color: Color(0xFFF786B8)),
  People(
      id: 3,
      title: "Timothée Chalamet",
      price: 2500,
      age:25,
      description: dummyText,
      image: "images/friend25.png",
      color: Color(0xFF989493)),
  People(
      id: 4,
      title: "Paulina Goto",
      price: 3000,
      age: 30,
      description: dummytext,
      image: "images/friend30.png",
      color: Color(0xFFE6B398)),
  People(
      id: 5,
      title: "Daniel Sharman",
      price: 4000,
      age:35,
      description: text,
      image: "images/friend35.png",
      color: Color(0xFFFB7883)),
  People(
    id: 6,
    title: "Keeley Hawes",
    price: 4500,
    age:40,
    description: dummyText,
    image: "images/friend41.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    " Hi I am College Student.I am a person who is positive about every aspect of life.There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think,I like to talk, I like to listen.I like to feel the music flowing on my face.I like to be surrounded by people. ";

String dummyTextt =
    " I have a passion for singing. A lot of honours and awards have been bagged by me in singing competitions. Also, I have a passion for painting and loves to play with colours using my imagination.The course of Life is full of ups and downs.In life always try to appreciate your living. ";

String dummyTexttt=
    "My hobbies are watching movies, listening to music, cooking.My strengths are I am a self-motivated person, workaholic, hardworking, quick learner.My long-term goal is to be in a position where my experience and skills would be useful for others.That's all about me.";

String dummytext=
    "I grew up in a family of teachers.My passion for helping others has been evident in my involvement in Kalamazoo Public Schools and as a camp counselor for the last three years.I have learned to interact with a diverse group of people, which has increased my ability to relate to others";

String text=
    "I’m a career writer. My job is to provide job seekers with expert advice on career-related topics. I read a lot and consult recruiting professionals so you don’t have to. I show you how to hack the recruitment process, create a job-winning resume, ace the job interview";

String tx=
    "I have moved to this city three months ago. I love the street food here. On weekends, I explore new eating joints. This way, I get to learn the routes of this city and prepare myself professionally.";



List<People> mothers = [
  People(
      id: 1,
      title: "Olivia Summers",
      price: 1500,
      age: 32,
      description: mom,
      image: 'images/mother1.png',
      color: Color(0xFF3D82AE)),
  People(
      id: 2,
      title: "Mia Andrews",
      price: 2000,
      age: 18,
      description: dummyTextt,
      image: 'images/mother2.png',
      color: Color(0xFFF786B8)),
  People(
      id: 3,
      title: "Charlotte Cole",
      price: 2500,
      age:25,
      description: dummyText,
      image: "images/mother3.png",
      color: Color(0xFF989493)),
  People(
      id: 4,
      title: "Sharlene Smiths",
      price: 3000,
      age: 30,
      description: dummytext,
      image: "images/mother4.png",
      color: Color(0xFFE6B398)),
  People(
      id: 5,
      title: "Angelina Jolie",
      price: 4000,
      age:35,
      description: text,
      image: "images/mother5.png",
      color: Color(0xFFFB7883)),
  People(
    id: 6,
    title: "Luna Avery",
    price: 4500,
    age:40,
    description: dummyText,
    image: "images/mother6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String mom="Hi! I am a mother of 3 years of old myself.I had a interest in acting since I was young But I couldn't I guess with this I can pursue it and give the love people need";


List<People> sisters = [
  People(
      id: 1,
      title: "Abigail Luca",
      price: 1500,
      age: 32,
      description: mom,
      image: 'images/sister1.png',
      color: Color(0xFF3D82AE)),
  People(
      id: 2,
      title: "Scarlett Carter",
      price: 2000,
      age: 18,
      description: dummyTextt,
      image: 'images/sister2.png',
      color: Color(0xFFF786B8)),
  People(
      id: 3,
      title: "Riley Ray",
      price: 2500,
      age:25,
      description: dummyText,
      image: "images/sister3.png",
      color: Color(0xFF989493)),
  People(
      id: 4,
      title: "Chloe Haze",
      price: 3000,
      age: 30,
      description: dummytext,
      image: "images/sister4.png",
      color: Color(0xFFE6B398)),
  People(
      id: 5,
      title: "Willow Maye",
      price: 4000,
      age:35,
      description: text,
      image: "images/sister5.png",
      color: Color(0xFFFB7883)),
  People(
    id: 6,
    title: "Natalie Brews",
    price: 4500,
    age:40,
    description: dummyText,
    image: "images/sister6.png",
    color: Color(0xFFAEAEAE),
  ),
];

List<People> fathers = [
  People(
      id: 1,
      title: "Kyle Shelton",
      price: 1500,
      age: 32,
      description: mom,
      image: 'images/father1.png',
      color: Color(0xFF3D82AE)),
  People(
      id: 2,
      title: "Eric Jones",
      price: 2000,
      age: 18,
      description: dummyTextt,
      image: 'images/father2.png',
      color: Color(0xFFF786B8)),
  People(
      id: 3,
      title: "Edwin Holland",
      price: 2500,
      age:25,
      description: dummyText,
      image: "images/father3.png",
      color: Color(0xFF989493)),
  People(
      id: 4,
      title: "Richard Clark",
      price: 3000,
      age: 30,
      description: dummytext,
      image: "images/father4.png",
      color: Color(0xFFE6B398)),
  People(
      id: 5,
      title: "Daniel Walker",
      price: 4000,
      age:35,
      description: text,
      image: "images/father5.png",
      color: Color(0xFFFB7883)),
  People(
    id: 6,
    title: "Noah Ford",
    price: 4500,
    age:40,
    description: dummyText,
    image: "images/father6.png",
    color: Color(0xFFAEAEAE),
  ),
];

List<People> brothers = [
  People(
      id: 1,
      title: "Alexander Bailey",
      price: 1500,
      age: 32,
      description: mom,
      image: 'images/brother1.png',
      color: Color(0xFF3D82AE)),
  People(
      id: 2,
      title: "Colin Parks",
      price: 2000,
      age: 18,
      description: dummyTextt,
      image: 'images/brother2.png',
      color: Color(0xFFF786B8)),
  People(
      id: 3,
      title: "Mark Thomson",
      price: 2500,
      age:25,
      description: dummyText,
      image: "images/brother3.png",
      color: Color(0xFF989493)),
  People(
      id: 4,
      title: "Logan Hart",
      price: 3000,
      age: 30,
      description: dummytext,
      image: "images/brother4.png",
      color: Color(0xFFE6B398)),
  People(
      id: 5,
      title: "Keith Marshall",
      price: 4000,
      age:35,
      description: text,
      image: "images/brother5.png",
      color: Color(0xFFFB7883)),
  People(
    id: 6,
    title: "Jimmy Walter",
    price: 4500,
    age:40,
    description: dummyText,
    image: "images/brother6.png",
    color: Color(0xFFAEAEAE),
  ),
];