# module "cloudflare_pages" {
#   source                        = "https://github.com/dnogu/terraform-cloudflare-pages_website.git"
#   cloudflare_account_id         = ${{ secrets.CLOUDFLARE_ACCOUNT_ID }}
#   cloudflare_api_email          = ${{ secrets.CLOUDFLARE_API_EMAIL }}
#   cloudflare_api_token          = ${{ secrets.CLOUDFLARE_API_KEY }}
#   repo_type                     = "github"
#   repo_name                     = ${{ github.event.repository.name }}
#   repo_owner                    = ${{ secrets.REPO_OWNER }}
#   pages_production_branch       = "main"
#   custom_domain                 = "caniretire.today"
# }

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}