module ProcessTweet
  @queue = :tweet

  def perform(status)
    screen_name = status.user.screen_name
    user = User.find_by_username(screen_name)
    puts status.inspect
    create_new_user(status) unless user

    # parses the command from a tweet, given the status
  end

  def create_new_user(status)
    CreateUserService.new(status)
  end
end

# [
#     {
#         "created_at"    =>"Sun Jan 31 00:33:34    +0000 2016",
#         "id"    =>693592927537385472,
#         "id_str"    =>"693592927537385472",
#         "text"    =>"it tweets?? @simpletweetgame",
#         "source"    =>"<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
#         "truncated"    =>false,
#         "in_reply_to_status_id"    =>nil,
#         "in_reply_to_status_id_str"    =>nil,
#         "in_reply_to_user_id"    =>nil,
#         "in_reply_to_user_id_str"    =>nil,
#         "in_reply_to_screen_name"    =>nil,
#         "user"    =>    {
#             "id"      =>4862605307,
#             "id_str"      =>"4862605307",
#             "name"      =>"simpletest",
#             "screen_name"      =>"simpletest10",
#             "location"      =>nil,
#             "url"      =>nil,
#             "description"      =>nil,
#             "protected"      =>false,
#             "verified"      =>false,
#             "followers_count"      =>0,
#             "friends_count"      =>0,
#             "listed_count"      =>0,
#             "favourites_count"      =>0,
#             "statuses_count"      =>25,
#             "created_at"      =>"Sat Jan 30 04:25:57      +0000 2016",
#             "utc_offset"      =>nil,
#             "time_zone"      =>nil,
#             "geo_enabled"      =>false,
#             "lang"      =>"en",
#             "contributors_enabled"      =>false,
#             "is_translator"      =>false,
#             "profile_background_color"      =>"F5F8FA",
#             "profile_background_image_url"      =>"",
#             "profile_background_image_url_https"      =>"",
#             "profile_background_tile"      =>false,
#             "profile_link_color"      =>"2B7BB9",
#             "profile_sidebar_border_color"      =>"C0DEED",
#             "profile_sidebar_fill_color"      =>"DDEEF6",
#             "profile_text_color"      =>"333333",
#             "profile_use_background_image"      =>true,
#             "profile_image_url"      =>"http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png",
#             "profile_image_url_https"      =>"https://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png",
#             "default_profile"      =>true,
#             "default_profile_image"      =>true,
#             "following"      =>nil,
#             "follow_request_sent"      =>nil,
#             "notifications"      =>nil
#         },
#         "geo"    =>nil,
#         "coordinates"    =>nil,
#         "place"    =>nil,
#         "contributors"    =>nil,
#         "is_quote_status"    =>false,
#         "retweet_count"    =>0,
#         "favorite_count"    =>0,
#         "entities"    =>    {
#             "hashtags"      =>      [
#
#             ],
#             "urls"      =>      [
#
#             ],
#             "user_mentions"      =>      [
#                 {
#                     "screen_name"          =>"SimpleTweetGame",
#                     "name"          =>"Simple Tweet Game",
#                     "id"          =>4862494972,
#                     "id_str"          =>"4862494972",
#                     "indices"          =>          [
#                         12,
#                         28
#                     ]
#                 }
#             ],
#             "symbols"      =>      [
#
#             ]
#         },
#         "favorited"    =>false,
#         "retweeted"    =>false,
#         "filter_level"    =>"low",
#         "lang"    =>"en",
#         "timestamp_ms"    =>"1454200414915"
#     }
# ])
# ]