class LyricsController < ApplicationController
require 'musix_match'
require 'uri'
require 'rspotify'


	def home 
end

	def search
		query= params['query'].gsub(' ', '%')
		url= "http://api.musixmatch.com/ws/1.1/track.search?q_lyrics=#{query}&apikey=69b4b5bb11093d1d1bb75fa3b8dd838b"
		
		encoded_url = URI.encode(url)
		reply = HTTParty.get(encoded_url)
	
		another_response = JSON.parse(reply)

		@results = another_response['message']['body']['track_list']

		#@results.each do |track|
			#RSpotify.authenticate("4133825ae599417bad1ab82e989010eb", "2ebd6dcdea494d3ea52eaa7673fcbf7c")
         	#spotify_id = track['track']['track_spotify_id']
          #spotify_preview_url = "https://api.spotify.com/v1/tracks?ids={ids}" 
 
 #Spotify API, send it the id and return a song or url to a song
          #track['spotify_url'] = spotify_url
		end


		# MusixMatch::API::Base.api_key= '69b4b5bb11093d1d1bb75fa3b8dd838b' 

		  #@response = MusixMatch.search_track(:q_lyrics => query)
		 #@response.each do |track|
		  	#track.lyrics = MusixMatch.get_lyrics(track.track_id)
		  #end
		 # binding.pry
		  #@track_id =  @response.first.track_id

		  #@track = MusixMatch.get_lyrics(track_id)


		#end
			

				end