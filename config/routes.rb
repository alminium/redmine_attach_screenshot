# Code Review plugin for Redmine
# Copyright (C) 2009-2012  Haruyuki Iida
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
RedmineApp::Application.routes.draw do
#    match 'attach_screenshot/:action', :to => 'attach_screenshot#index'
    match 'attach_screenshot/:action', :controller => 'attach_screenshot', :via => [:get, :post]
#    post 'attach_screenshot/index', :controller => 'attach_screenshot', :action => 'index'
#    post 'attach_screenshot/index', :controller => 'attach_screenshot', :action => 'index', :id => /\d+/, :filename => /.*/
#    match 'attach_screenshot/index', :to => 'attach_screenshot#index', :via => :post
    match 'projects/:id/attach_screenshot/:action', :to => 'attach_screenshot'
end
#ActionController::Routing::Routes.draw do |map|
#  
#  map.connect 'projects/:id/attach_screenshot/:action', :controller => 'attach_screenshot'
#end