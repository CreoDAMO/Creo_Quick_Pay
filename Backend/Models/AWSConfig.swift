// AWSConfig.swift
import AWSLambda
import AWSS3
import AWSCore

// Initialize AWS Lambda
let lambda = AWSLambda(region: .USEast1)

// Initialize AWS S3 with custom configuration
let s3Config = AWSServiceConfiguration(region: .USEast1, credentialsProvider: /* Your credentials provider */)
AWSS3.register(with: s3Config!, forKey: "defaultKey")

// Access the S3 service with the default configuration
let s3 = AWSS3.s3(forKey: "defaultKey")

// Example function to upload a file to S3
func uploadFileToS3(bucket: String, key: String, fileURL: URL) {
    let uploadRequest = AWSS3TransferManagerUploadRequest()
    uploadRequest?.bucket = bucket
    uploadRequest?.key = key
    uploadRequest?.body = fileURL
    
    // Perform the upload
    let transferManager = AWSS3TransferManager.default()
    transferManager.upload(uploadRequest!).continueWith { (task) -> AnyObject? in
        if let error = task.error {
            print("Upload failed with error: \(error)")
        }
        if task.result != nil {
            print("Upload successful")
        }
        return nil
    }
}

// Remember to handle AWS credentials securely and to configure the necessary permissions for your AWS resources.
