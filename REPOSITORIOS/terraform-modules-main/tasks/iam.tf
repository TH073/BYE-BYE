# Grant access to create and add tasks to a queue
locals {
    enqueuers = flatten ([
        for k, q in var.queue : {
                queue = k
                sas = q.enqueuers
        }
    if length(q.enqueuers) > 0
    ])
}
resource "google_cloud_tasks_queue_iam_binding" "binding" {
  project = var.project
  location = var.location

  for_each = var.queue

  name = each.key
  role = "roles/cloudtasks.enqueuer"
  members = each.value.enqueuers

}