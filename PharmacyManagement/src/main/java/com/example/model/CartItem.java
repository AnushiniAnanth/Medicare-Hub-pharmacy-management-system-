package com.example.model;

public class CartItem {
    private int tabletId;  // Added tabletId
    private String tabletName;
    private int cost;
    private int quantity;

    // Constructor with tabletId
    public CartItem(int tabletId, String tabletName, int cost, int quantity) {
        this.tabletId = tabletId;
        this.tabletName = tabletName;
        this.cost = cost;
        this.quantity = quantity;
    }

    // Getters and Setters
    public int getTabletId() {
        return tabletId;
    }

    public void setTabletId(int tabletId) {
        this.tabletId = tabletId;
    }

    public String getTabletName() {
        return tabletName;
    }

    public void setTabletName(String tabletName) {
        this.tabletName = tabletName;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
