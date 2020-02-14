# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

Refile.secret_key = '7e5ea11bab96f61c069c4b76d2bd326d27ca40f2061af53be06b414e8fafd54232ca74c403c71211751d0f75f5ce7976930850935a0b6514dbc5ac15412e4477'
