package net.group.insert.output;

public class Group {
	protected int num;
	protected String name;
	protected int groupnum;
	protected String setsnum;
	protected String sport;
	protected int distance;
	protected int split;
	protected String duration;
	protected String unit;
	protected String timeunit;


public Group() {
}

public Group(String name, String sport) {
	super();

	this.name = name;
	this.sport = sport;
}
public Group(String name) {
	super();

	this.name = name;

}

public Group( int groupnum,String setsnum, int distance, int split) {
	super();
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.distance = distance;
	this.split = split;
}


public Group( int groupnum,String setsnum, int distance, int split, String duration, String unit) {
	super();
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.distance = distance;
	this.split = split;
	this.duration = duration;
	this.unit = unit;
	
}


public Group(int num, int groupnum,String setsnum, int distance, int split) {
	super();
	this.num = num;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.distance = distance;
	this.split = split;
}

public Group(String name, int groupnum,String setsnum, String sport) {
	super();

	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	
}

public Group(String name, int groupnum,String setsnum, String sport, int distance, int split) {
	super();

	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	this.distance = distance;
	this.split = split;
}


public Group(int num, String name, int groupnum, String setsnum, String sport, int distance, int split) {
	super();
	this.num = num;
	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	this.distance = distance;
	this.split = split;
}

public Group(int num, String name, int groupnum, String setsnum, String sport) {
	super();
	this.num = num;
	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	
}

public Group(int num, String name, int groupnum, String setsnum, String sport,int distance, int split, String duration, String unit, String timeunit) {
	super();
	this.num = num;
	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	this.distance = distance;
	this.split = split;
	this.duration = duration;
	this.unit=unit;
	this.timeunit=timeunit;
	
}
public Group(int num, String name, int groupnum, String setsnum, String sport,int distance, int split, String duration, String unit) {
	super();
	this.num = num;
	this.name = name;
	this.groupnum = groupnum;
	this.setsnum = setsnum;
	this.sport = sport;
	this.distance = distance;
	this.split = split;
	this.duration = duration;
	this.unit=unit;
	
}



public int getNum() {
	return num;
}



public String getDuration() {
	return duration;
}

public void setDuration(String duration) {
	this.duration = duration;
}

public String getTimeunit() {
	return timeunit;
}

public void setTimeunit(String timeunit) {
	this.timeunit = timeunit;
}

public String getUnit() {
	return unit;
}

public void setUnit(String unit) {
	this.unit = unit;
}

public void setNum(int num) {
	this.num = num;
}



public String getName() {
	return name;
}



public void setName(String name) {
	this.name = name;
}



public int getGroupnum() {
	return groupnum;
}



public void setGroupnum(int groupnum) {
	this.groupnum = groupnum;
}



public String getSetsnum() {
	return setsnum;
}



public void setSetsnum(String set) {
	this.setsnum = setsnum;
}



public String getSport() {
	return sport;
}



public void setSport(String sport) {
	this.sport = sport;
}



public int getDistance() {
	return distance;
}



public void setDistance(int distance) {
	this.distance = distance;
}



public int getSplit() {
	return split;
}



public void setSplit(int split) {
	this.split = split;
}
}
