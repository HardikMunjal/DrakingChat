package com.draka.shivi.model;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)

public class AutoLoginResponse {

	
    public String first_name;
    public String access_token;
    public int id;
    
    
    @JsonProperty("first_name")
    
    public String getFirst_name() {
        return first_name;
    }

    public void setFirstName(String first_name) {
        this.first_name = first_name;
    
    }
@JsonProperty("access_token")
    
    public String getAccess_token() {
        return access_token;
    }

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    
    }
    
 @JsonProperty("id")
    
    public int id() 
 {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    
    }
}