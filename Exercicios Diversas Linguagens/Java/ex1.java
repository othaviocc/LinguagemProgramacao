class Main {
    // Classe base Shape
    static class Shape {
        protected String fillColor;
        protected String shapeName;

        public Shape(String name) {
            this.shapeName = name;
            this.fillColor = "sem preenchimento";
        }

        public void setFillColor(String color) {
            this.fillColor = color;
        }

        public void removeFillColor() {
            this.fillColor = "sem preenchimento";
        }

        @Override
        public String toString() {
            return shapeName + " com preenchimento: " + fillColor;
        }
    }

    // Subclasse Circle
    static class Circle extends Shape {
        private double radius;

        public Circle(double radius) {
            super("Círculo");
            this.radius = radius;
        }

        @Override
        public String toString() {
            return super.toString() + " | Raio: " + radius;
        }
    }

    // Subclasse Square
    static class Square extends Shape {
        private double side;

        public Square(double side) {
            super("Quadrado");
            this.side = side;
        }

        @Override
        public String toString() {
            return super.toString() + " | Lado: " + side;
        }
    }

    // Subclasse Rectangle
    static class Rectangle extends Shape {
        private double width, height;

        public Rectangle(double width, double height) {
            super("Retângulo");
            this.width = width;
            this.height = height;
        }

        @Override
        public String toString() {
            return super.toString() + " | Largura: " + width + ", Altura: " + height;
        }
    }

    // Método polimórfico
    public static void showInfo(Shape s) {
        System.out.println("Informações da forma:");
        System.out.println(s.toString());
        System.out.println("------------------------");
    }

    // Método principal
    public static void main(String[] args) {
        Shape circulo = new Circle(7);
        circulo.setFillColor("Azul");

        Shape quadrado = new Square(5);
        // sem preenchimento

        Shape retangulo = new Rectangle(3, 6);
        retangulo.setFillColor("Preto");

        Shape generica = new Shape("Forma");
        generica.setFillColor("Verde");

        // Remover preenchimento do retângulo
        retangulo.removeFillColor();

        // Mostrar todas as formas
        showInfo(circulo);
        showInfo(quadrado);
        showInfo(retangulo);
        showInfo(generica);
    }
}
