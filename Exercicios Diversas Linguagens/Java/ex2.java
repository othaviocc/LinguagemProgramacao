import java.text.DecimalFormat;

public class ex2 {

    // Classe abstrata Shape
    static abstract class Shape {
        protected String shapeName;

        public Shape(String name) {
            this.shapeName = name;
        }

        public abstract double area();

        @Override
        public String toString() {
            return shapeName;
        }
    }

    // Esfera
    static class Sphere extends Shape {
        private double radius;

        public Sphere(double r) {
            super("Sphere");
            radius = r;
        }

        public double area() {
            return 4 * Math.PI * radius * radius;
        }

        public String toString() {
            return super.toString() + " | Raio: " + radius;
        }
    }

    // Prisma retangular
    static class RectangularPrism extends Shape {
        private double height, width, depth;

        public RectangularPrism(double h, double w, double d) {
            super("Rectangular Prism");
            height = h;
            width = w;
            depth = d;
        }

        public double area() {
            return 2 * (height * width + height * depth + width * depth);
        }

        public String toString() {
            return super.toString() + " | h: " + height + ", w: " + width + ", d: " + depth;
        }
    }

    // Cilindro
    static class Cylinder extends Shape {
        private double radius, height;

        public Cylinder(double r, double h) {
            super("Cylinder");
            radius = r;
            height = h;
        }

        public double area() {
            return 2 * Math.PI * radius * radius + 2 * Math.PI * radius * height;
        }

        public String toString() {
            return super.toString() + " | Raio: " + radius + ", Altura: " + height;
        }
    }

    // Classe Paint
    static class Paint {
        private double coverage;

        public Paint(double c) {
            coverage = c;
        }

        public double amount(Shape s) {
            System.out.println("Computando tinta para: " + s.toString());
            return s.area() / coverage;
        }
    }

    // Método principal
    public static void main(String[] args) {
        final double COVERAGE = 350;
        Paint paint = new Paint(COVERAGE);

        Shape deck = new RectangularPrism(20, 35, 10);
        Shape bigBall = new Sphere(15);
        Shape tank = new Cylinder(10, 30);

        double deckAmt = paint.amount(deck);
        double ballAmt = paint.amount(bigBall);
        double tankAmt = paint.amount(tank);

        DecimalFormat fmt = new DecimalFormat("0.#");

        System.out.println("\n# de latões necessários...");
        System.out.println("Deck: " + fmt.format(deckAmt));
        System.out.println("Big Ball: " + fmt.format(ballAmt));
        System.out.println("Tank: " + fmt.format(tankAmt));
    }
}
