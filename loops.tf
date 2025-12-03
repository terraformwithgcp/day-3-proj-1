variable "list-of-buckets" {
    type = list(string)
    default = ["bucket-1", "bucket-2", "bucket-3"]
  
}


resource "google_storage_bucket" "buckets" {
    # count = length(var.list-of-buckets)
    for_each = toset(var.list-of-buckets)
    # name = "himanshudec-${var.list-of-buckets[count.index]}"
    name = "himanshudecforeach-${each.value}"
    location = "US"

}