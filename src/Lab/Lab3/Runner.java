package Lab.Lab3;

import java.util.Arrays;
import java.util.List;

/**
 * @author phurpawangchuk
 * @contact phurpa.wangchuk@miu.edu
 * @year 2024-01-05
 */
public class Runner {
    public static void main(String[] args) {
        Product product1 = new Product("P101","IPhone", 500);
        Product product2 = new Product("P102","Samsung", 700);
        Product product3 = new Product("P103","Nike", 700);

        product1.addReview(new Review(1,"Good", 5));
        product1.addReview(new Review(2,"Excellent", 5));

        product2.addReview(new Review(1,"Good", 5));
        product2.addReview(new Review(2,"V.Good", 5));

        List<Product> products = Arrays.asList(product1,product2,product3);
        System.out.println(products);


    }
}
