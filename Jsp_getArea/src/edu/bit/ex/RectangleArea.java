package edu.bit.ex;

public class RectangleArea {
	double width;
	double height;

	public double getRectangleArea() {
		return width * height;
	}

	public RectangleArea(double width, double height) {
		this.height = height;
		this.width = width;
	}
}
