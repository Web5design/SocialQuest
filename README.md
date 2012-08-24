SocialQuest Repository (at Campus Party)
Copyright 2012 SocialQuest Verein (TU Projects, TU Berlin, www.socialquest.org)

__PREQUISITES__

    gem install bundler --pre
    brew install postgresql
    git clone https://github.com/SocialQuest/SocialQuest.git .
    cd SocialQuest
    bundle install
    psql template1
      create role social_quest createdb login;
      \q
    rake db:setup

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.


__Required Facebook Sope__

    'email,publish_actions,publish_stream,user_location,user_likes,user_birthday' 


__Graphics Frontend__

Robert just added some [fancy icons](https://github.com/SocialQuest/SocialQuest/issues/2#issuecomment-7991162)
[Mockup user info] (https://docs.google.com/file/d/0B_hdrRVCQihzdW1EbjUxNnlGTGc/edit)
