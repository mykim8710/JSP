package edu.bit.ex;

public class TriangleArea {
	double width;
	double height;

	public double getTriangleArea() {
		return 0.5 * width * height;
	}

	public TriangleArea(double width, double height) {
		this.height = height;
		this.width = width;
	}

}
