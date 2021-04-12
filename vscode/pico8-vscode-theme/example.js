// color theme example

import { FOOBAR } from "../foo.js";

export const FOO = 128;

class Size {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }

  getWidth() {
    return this.width;
  }
}

const size = new Size(1, 2);

console.log(size.getWidth());

function foobar(parameter) {
  return "hello world: " + parameter;
}

function list() {
  return [1, 2, 3];
}

var foo = list();

console.log("example");

foobar(123.45);
