package Lab.Lab_Practise;

/**
 * @author phurpawangchuk
 * @contact phurpa.wangchuk@miu.edu
 * @year 2024-01-05
 */
public class Review {
    private String comment;
    private int rating;
    private int rid;
    private Product product;

    public Review(int rid, String comment, int rating) {
        this.rid = rid;
        this.comment = comment;
        this.rating = rating;
//        this.product = product;
    }

    @Override
    public String toString() {
        return "Review{" +
                "comment='" + comment + '\'' +
                ", rating=" + rating +
                ", rid=" + rid +
                '}';
    }
}
