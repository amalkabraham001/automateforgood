#
# Cookbook:: awssecure
# Recipe:: default
#modified by Amal Abraham for the Chef good to automate project
# Copyright:: 2021, The Authors, All Rights Reserved.
windows_package '7zip' do
  source 'http://www.7-zip.org/a/7z938-x64.msi'
  remote_file_attributes ({
    :path => 'C:\7zip.msi'

  })
end

windows_package 'googlechrome' do
  source 'https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise.msi'
  remote_file_attributes ({
    :path => 'C:\chrome.msi'

  })
end

