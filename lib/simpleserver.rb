require "simpleserver/version"
require 'socket'

module Simpleserver

  def self.run
    server = TCPServer.new 1337

    loop do
      client = server.accept
      request = client.gets
      verb, path, protocol = request.split(" ")
      path = path.split('?')[0]
      path = "." + path

      if File.file?(path)
        body = File.open(path, "r"){|file| file.read}
        status = "200 OK"
      else
        body = "File not found\n"
        status = "404 Not Found"
      end

      response = "#{protocol} #{status}\n"
      response += "Content-Type: text/html\n"
      response += "Content-Length: #{body.length}\n"
      response += "Connection: close\n\n"
      response += body

      client.puts response
      client.close
    end
  end
end
