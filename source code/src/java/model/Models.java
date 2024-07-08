/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author anphu
 */
public class Models {

    private int modelId;
    private String modelName;

    public Models() {
    }

    public Models(int modelId, String modelName) {
        this.modelId = modelId;
        this.modelName = modelName;
    }

    public int getModelId() {
        return modelId;
    }

    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    @Override
    public String toString() {
        return "Models{" + "modelId=" + modelId + ", modelName=" + modelName + '}';
    }

}
