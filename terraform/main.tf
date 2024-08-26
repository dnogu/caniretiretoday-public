module "cloudflare_pages" {
  source                        = "https://github.com/dnogu/terraform-cloudflare-pages_website.git"
  cloudflare_account_id         = ${{ secrets.CLOUDFLARE_ACCOUNT_ID }}
  cloudflare_api_email          = "your-api-email"
  cloudflare_api_token          = ${{ secrets.CLOUDFLARE_API_KEY }}
(*   cloudflare_global_api_key     = "your-global-api-key" *)
  repo_type                     = "github"
  repo_name                     = ${{ github.event.repository.name }}
  repo_owner                    = "your-repo-owner"
  pages_production_branch       = "main"
  custom_domain                 = "example.com"
  // ... additional variables
}
