package oop.lab2;

public class Retangle {
	int width;
	int height;
	
	boolean isSquare() {
		
		return width == height;
	}

	int calculateCircumference() {
		return 2 * (width + height);
	}

	int calculateArea() {
		return width * height;
	}	
}
