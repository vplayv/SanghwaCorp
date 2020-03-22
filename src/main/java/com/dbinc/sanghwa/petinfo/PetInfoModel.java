package com.dbinc.sanghwa.petinfo;

import lombok.Data;

@Data
public class PetInfoModel {
	String p_photo;
	String p_name;
	String p_type;
	String p_birth;
	String p_gender;
	int p_weight;
	String p_status;
}
