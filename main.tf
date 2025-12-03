resource "google_compute_instance" "vm1" {
 name         = var.vm-name
 machine_type = var.vm-type
 zone         = var.vm-zone


 boot_disk {
   initialize_params {
     image = var.os-name
     labels = {
       my_label = "value"
     }
   }
 }


 // Local SSD disk
 network_interface {
   network = var.network-name


   access_config {
     // Ephemeral public IP
   }
 }
}



resource "google_compute_disk" "disk1" {
 name  = "cloudlabs19-ssd-disk1"
 type  = "pd-ssd"
 zone  = "us-central1-a"
 size  = 40
 }


resource "google_bigquery_dataset" "bgdata1" {
 dataset_id = "cloudlabs19_bigquery_dataset"
 location   = "US"
 depends_on = [ google_compute_instance.vm1 ]
 }
