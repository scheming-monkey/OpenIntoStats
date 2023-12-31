#' Which resume attributes drive job callbacks?
#'
#' This experiment data comes from a study that sought to understand the
#' influence of race and gender on job application callback rates. The study
#' monitored job postings in Boston and Chicago for several months during 2001
#' and 2002 and used this to build up a set of test cases. Over this time
#' period, the researchers randomly generating resumes to go out to a job
#' posting, such as years of experience and education details, to create a
#' realistic-looking resume. They then randomly assigned a name to the resume
#' that would communicate the applicant's gender and race. The first names
#' chosen for the study were selected so that the names would predominantly be
#' recognized as belonging to black or white individuals. For example, Lakisha
#' was a name that their survey indicated would be interpreted as a black
#' woman, while Greg was a name that would generally be interpreted to be
#' associated with a white male.
#'
#' Because this is an experiment, where the race and gender attributes are
#' being randomly assigned to the resumes, we can conclude that any
#' statistically significant difference in callback rates is causally linked to
#' these attributes.
#'
#' Do you think it's reasonable to make a causal conclusion? You may have some
#' health skepticism. However, do take care to appreciate that this was an
#' experiment: the first name (and so the inferred race and gender) were
#' randomly assigned to the resumes, and the quality and attributes of a resume
#' were assigned independent of the race and gender. This means that any
#' effects we observe are in fact causal, and the effects related to race are
#' both statistically significant and very large: white applicants had about a
#' 50\% better chance of getting a callback than black candidates.
#'
#' Do you still have doubts lingering in the back of your mind about the
#' validity of this study?  Maybe a counterargument about why the standard
#' conclusions from this study may not apply? The article summarizing the
#' results was exceptionally well-written, and it addresses many potential
#' concerns about the study's approach. So if you're feeling skeptical about
#' the conclusions, please find the link below and explore!
#'
#' @name resume
#' @docType data
#' @format A data frame with 4870 observations, representing 4870 resumes, over
#' 30 different variables that describe the job details, the outcome
#' (\code{received_callback}), and attributes of the resume. \describe{
#' \item{job_ad_id}{Unique ID associated with the advertisement.}
#' \item{job_city}{City where the job was located.}
#' \item{job_industry}{Industry of the job.}
#' \item{job_type}{Type of role.} \item{job_fed_contractor}{
#' Indicator for if the employer is a federal contractor.}
#' \item{job_equal_opp_employer}{Indicator for if the employer is an
#' Equal Opportunity Employer.} \item{job_ownership}{The type of
#' company, e.g. a nonprofit or a private company.}
#' \item{job_req_any}{Indicator for if any job requirements are
#' listed. If so, the other \code{job_req_*} fields give more detail.}
#' \item{job_req_communication}{Indicator for if communication skills
#' are required.} \item{job_req_education}{Indicator for if some
#' level of education is required.} \item{job_req_min_experience}{
#' Amount of experience required.} \item{job_req_computer}{Indicator
#' for if computer skills are required.} \item{job_req_organization}{
#' Indicator for if organization skills are required.}
#' \item{job_req_school}{Level of education required.}
#' \item{received_callback}{Indicator for if there was a callback from
#' the job posting for the person listed on this resume.}
#' \item{firstname}{The first name used on the resume.}
#' \item{race}{Inferred race associated with the first name on the
#' resume.} \item{gender}{Inferred gender associated with the first
#' name on the resume.} \item{years_college}{Years of college
#' education listed on the resume.} \item{college_degree}{Indicator
#' for if the resume listed a college degree.} \item{honors}{
#' Indicator for if the resume listed that the candidate has been awarded some
#' honors.} \item{worked_during_school}{Indicator for if the resume
#' listed working while in school.} \item{years_experience}{Years of
#' experience listed on the resume.} \item{computer_skills}{
#' Indicator for if computer skills were listed on the resume. These skills
#' were adapted for listings, though the skills were assigned independently of
#' other details on the resume.} \item{special_skills}{Indicator for
#' if any special skills were listed on the resume.}
#' \item{volunteer}{Indicator for if volunteering was listed on the
#' resume.} \item{military}{Indicator for if military experience was
#' listed on the resume.} \item{employment_holes}{Indicator for if
#' there were holes in the person's employment history.}
#' \item{has_email_address}{Indicator for if the resume lists an email
#' address.} \item{resume_quality}{Each resume was generally
#' classified as either lower or higher quality.} }
#' @seealso \code{\link{resume}}
#' @source Bertrand M, Mullainathan S. 2004. "Are Emily and Greg More Employable
#' than Lakisha and Jamal? A Field Experiment on Labor Market Discrimination".
#' The American Economic Review 94:4 (991-1013).
#' \doi{10.3386/w9873}.
#' @keywords datasets
#' @examples
#'
#' head(resume, 5)
#'
#' # Some checks to confirm balance between race and
#' # other attributes of a resume. There should be
#' # some minor differences due to randomness, but
#' # each variable should be (and is) generally
#' # well-balanced.
#' table(resume$race, resume$years_college)
#' table(resume$race, resume$college_degree)
#' table(resume$race, resume$honors)
#' table(resume$race, resume$worked_during_school)
#' table(resume$race, resume$years_experience)
#' table(resume$race, resume$computer_skills)
#' table(resume$race, resume$special_skills)
#' table(resume$race, resume$volunteer)
#' table(resume$race, resume$military)
#' table(resume$race, resume$employment_holes)
#' table(resume$race, resume$has_email_address)
#' table(resume$race, resume$resume_quality)
#'
#' # Regarding the callback outcome for race,
#' # we observe a very large difference.
#' tapply(
#'   resume$received_callback,
#'   resume[c("race", "gender")],
#'   mean
#' )
#'
#' # Natural question: is this statisticaly significant?
#' # A proper analysis would take into account the
#' # paired nature of the data. For each ad, let's
#' # compute the following statistic:
#' #     <callback rate for white candidates>
#' #     - <callback rate for black candidates>
#' # First contruct the callbacks for white and
#' # black candidates by ad ID:
#' table(resume$race)
#' cb_white <- with(
#'   subset(resume, race == "white"),
#'   tapply(received_callback, job_ad_id, mean)
#' )
#' cb_black <- with(
#'   subset(resume, race == "black"),
#'   tapply(received_callback, job_ad_id, mean)
#' )
#' # Next, compute the differences, where the
#' # names(cb_white) part ensures we matched up the
#' # job ad IDs.
#' diff <- cb_white - cb_black[names(cb_white)]
#' # Finally, we can apply a t-test on the differences:
#' t.test(diff)
#' # There is very strong evidence of an effect.
#'
#' # Here's a similar check with gender. There are
#' # more female-inferred candidates used on the resumes.
#' table(resume$gender)
#' cb_male <- with(
#'   subset(resume, gender == "m"),
#'   tapply(received_callback, job_ad_id, mean)
#' )
#' cb_female <- with(
#'   subset(resume, gender == "f"),
#'   tapply(received_callback, job_ad_id, mean)
#' )
#' diff <- cb_female - cb_male[names(cb_female)]
#' # The `na.rm = TRUE` part ensures we limit to jobs
#' # where both a male and female resume were sent.
#' t.test(diff, na.rm = TRUE)
#' # There is no statistically significant difference.
#'
#' # Was that the best analysis? Absolutely not!
#' # However, the analysis was unbiased. To get more
#' # precision on the estimates, we could build a
#' # multivariate model that includes many characteristics
#' # of the resumes sent, e.g. years of experience.
#' # Since those other characteristics were assigned
#' # independently of the race characteristics, this
#' # means the race finding will almost certainy will
#' # hold. However, it is possible that we'll find
#' # more interesting results with the gender investigation.
"resume"
