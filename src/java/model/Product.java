/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author cilli
 */
public class Product {
     private String id;
    private String ProductName;
    private String ProductDescription;
    private String ProductType;
    private String ProductColor;
    private double ProductPrice;
    private String ProductWeight;
     private String ProductHeight;

       public Product() {
        id = "";
        ProductDescription = "";
        ProductPrice = 0;
    }
    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the ProductName
     */
    public String getProductName() {
        return ProductName;
    }

    /**
     * @param ProductName the ProductName to set
     */
    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    /**
     * @return the ProductDescription
     */
    public String getProductDescription() {
        return this.ProductDescription;
    }

    /**
     * @param ProductDescription the ProductDescription to set
     */
    public void setProductDescription(String ProductDescription) {
        this.ProductDescription = ProductDescription;
    }

    /**
     * @return the ProductType
     */
    public String getProductType() {
        return ProductType;
    }

    /**
     * @param ProductType the ProductType to set
     */
    public void setProductType(String ProductType) {
        this.ProductType = ProductType;
    }

    /**
     * @return the ProductColor
     */
    public String getProductColor() {
        return ProductColor;
    }

    /**
     * @param ProductColor the ProductColor to set
     */
    public void setProductColor(String ProductColor) {
        this.ProductColor = ProductColor;
    }

    /**
     * @return the ProductPrice
     */
    public double getProductPrice() {
        return this.ProductPrice;
    }

    /**
     * @param ProductPrice the ProductPrice to set
     */
    public void setProductPrice(double ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    /**
     * @return the ProductWeight
     */
    public String getProductWeight() {
        return ProductWeight;
    }

    /**
     * @param ProductWeight the ProductWeight to set
     */
    public void setProductWeight(String ProductWeight) {
        this.ProductWeight = ProductWeight;
    }

    /**
     * @return the ProductHeight
     */
    public String getProductHeight() {
        return ProductHeight;
    }

    /**
     * @param ProductHeight the ProductHeight to set
     */
    public void setProductHeight(String ProductHeight) {
        this.ProductHeight = ProductHeight;
    }



  
    
    
}
