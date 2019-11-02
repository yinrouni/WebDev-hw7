defmodule Timesheet2Web.JobView do
  use Timesheet2Web, :view
  alias Timesheet2Web.JobView

  def render("index.json", %{jobs: jobs}) do
    %{data: render_many(jobs, JobView, "job.json")}
  end

  def render("show.json", %{job: job}) do
    %{data: render_one(job, JobView, "job.json")}
  end

  def render("job.json", %{job: job}) do
    %{id: job.id,
      job_code: job.job_code,
      hours: job.hours,
      name: job.name,
      desc: job.desc}
  end
end
