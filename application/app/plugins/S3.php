<?php

use Aws\S3\S3Client;

class S3
{

    public $s3Client;
    public $bucket;
    public $cloudFrontUrl;

    public function __construct($parameters)
    {
        $this->s3Client = new S3Client($parameters);
    }


    public function setBucket($bucket)
    {
        $this->bucket = $bucket;
    }

    public function setCloudFrontUrl($cloudFrontUrl)
    {
        $this->cloudFrontUrl = $cloudFrontUrl;
    }

    public function putObject($key, $file)
    {
        $this->key = $key;
      
        try {
            $result = $this->s3Client->putObject([
                'Bucket' => $this->bucket,
                'Key' => $key,
                'Body' => $file,
                'ACL' => 'private',
                'ContentType' => 'application/octet-stream'
            ]);

            if(! isset($result['ObjectURL'])) {
                throw new Exception('Upload failed.');
            }

            return true;

        } catch (Exception $e) {

             //$e->getMessage();
             return false;
        }
    }


    public function deleteObject($deleteKey)
    {
      
        try {

            $result = false;
            if($this->s3Client->doesObjectExist($this->bucket, $deleteKey)) {
                $result = $this->s3Client->deleteObject([
                    'Bucket' => $this->bucket,
                    'Key' => $deleteKey
                ]);
            }

            return true;

        } catch (Exception $e) {

             return false;
        }
    }

    public function getUrl()
    {
        return $this->cloudFrontUrl . $this->key;
    }
}
