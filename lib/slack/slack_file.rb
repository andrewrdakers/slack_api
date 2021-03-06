class SlackFile < SlackApi
  def info_url
    '/files.info'
  end

  def info(file, options = {})
    http_post(info_url, { file: file }.merge(options))
  end

  def list_url
    '/files.list'
  end

  def list(options = {})
    http_post(list_url, options)
  end

  def upload_url
    '/files.upload'
  end

  def upload(options = {})
    http_post(upload_url, options)
  end
end
