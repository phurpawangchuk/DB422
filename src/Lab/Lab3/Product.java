package Lab.Lab3;

import java.util.ArrayList;
import java.util.List;

/**
 * @author phurpawangchuk
 * @contact phurpa.wangchuk@miu.edu
 * @year 2024-01-05
 */
public class Product {
    private String pid;
    private String pname;
    private int price;
    private List<Review> review;

    public Product(String pid, String pname, int price) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        review = new ArrayList<>();
    }

    public void addReview(Review r) {
        review.add(r);
    }

    public List<Review> getReview() {
        return review;
    }

    public int getPrice() {
        return price;
    }

    public String getPid() {
        return pid;
    }

    public String getPname() {
        return pname;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", review=" + review +
                '}';
    }
}
