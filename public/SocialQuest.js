var SocialQuest = {

  IconFactory: {
    construct: function(){
      return SocialQuest.IconFactory.prototype;
    },
    prototype:{
      getUrl:function(questKind) {
        return this.url;
      }
    },
    factory: function(questKind) {

        var constr = questKind,
        icon;


        if (typeof SocialQuest.IconFactory[constr] !== "function") {
          throw {
            name: "Error",
            message: constr + " doesn't exist"

          };
        }

        if (typeof SocialQuest.IconFactory[constr].prototype.getUrl !== "function") {
          SocialQuest.IconFactory[constr].prototype = new SocialQuest.IconFactory.construct();

        }

        icon = new SocialQuest.IconFactory[constr]();
        return icon;
    },
    shout: function() {
      this.url = "images/icons/Micro_512x512.png";
    },
    quest: function() {
      this.url = "images/icons/Exclamation_Mark_512x512.png";
    },
    project: function() {
      this.url = "images/icons/Light_Bulb_512x512.png"
    },
    meeting: function() {
      this.url = "images/icons/Clock_512x512.png";
    },
    // Not yet implemented because of blank in name
    background_story: function() {
      this.url = "";

    },

    organization: function() {
      this.url = "images/icons/Home_512x512.png";

    },






  },

};
