class HomeDataEntity {
	String msg;
	HomeDataData data;
	int status;

	HomeDataEntity({this.msg, this.data, this.status});

	HomeDataEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		data = json['data'] != null ? new HomeDataData.fromJson(json['data']) : null;
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['status'] = this.status;
		return data;
	}
}

class HomeDataData {
	int pages;
	int size;
	List<HomeDataDataData> data;

	HomeDataData({this.pages, this.size, this.data});

	HomeDataData.fromJson(Map<String, dynamic> json) {
		pages = json['pages'];
		size = json['size'];
		if (json['data'] != null) {
			data = new List<HomeDataDataData>();(json['data'] as List).forEach((v) { data.add(new HomeDataDataData.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['pages'] = this.pages;
		data['size'] = this.size;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class HomeDataDataData {
	List<String> cover;
	List<HomeDataDataDataClassify> classify;
	String times;
	int comments;
	int isFollow;
	int userId;
	String nickname;
	int isThumbs;
	int id;
	String portrait;
	String content;
	int thumbs;

	HomeDataDataData({this.cover, this.classify, this.times, this.comments, this.isFollow, this.userId, this.nickname, this.isThumbs, this.id, this.portrait, this.content, this.thumbs});

	HomeDataDataData.fromJson(Map<String, dynamic> json) {
		cover = json['cover']?.cast<String>();
		if (json['classify'] != null) {
			classify = new List<HomeDataDataDataClassify>();(json['classify'] as List).forEach((v) { classify.add(new HomeDataDataDataClassify.fromJson(v)); });
		}
		times = json['times'];
		comments = json['comments'];
		isFollow = json['is_follow'];
		userId = json['user_id'];
		nickname = json['nickname'];
		isThumbs = json['is_thumbs'];
		id = json['id'];
		portrait = json['portrait'];
		content = json['content'];
		thumbs = json['thumbs'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover'] = this.cover;
		if (this.classify != null) {
      data['classify'] =  this.classify.map((v) => v.toJson()).toList();
    }
		data['times'] = this.times;
		data['comments'] = this.comments;
		data['is_follow'] = this.isFollow;
		data['user_id'] = this.userId;
		data['nickname'] = this.nickname;
		data['is_thumbs'] = this.isThumbs;
		data['id'] = this.id;
		data['portrait'] = this.portrait;
		data['content'] = this.content;
		data['thumbs'] = this.thumbs;
		return data;
	}
}

class HomeDataDataDataClassify {
	int id;
	String title;

	HomeDataDataDataClassify({this.id, this.title});

	HomeDataDataDataClassify.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['title'] = this.title;
		return data;
	}
}
