interface NFTCardProps {
  tokenId: number;
  name: string;
  image: string;
  price: number;
  seller: string;
  isAuction: boolean;
  onBuy: (tokenId: number) => void;
}

export const NFTCard = ({ tokenId, name, image, price, seller, isAuction, onBuy }: NFTCardProps) => (
  <div className="nft-card">
    <img src={image} alt={name} className="nft-image" />
    <div className="nft-info">
      <h3>{name}</h3>
      <p className="seller">by {seller.slice(0, 8)}...{seller.slice(-4)}</p>
      <div className="price-row">
        <span className="price">{price / 1_000_000} STX</span>
        {isAuction && <span className="badge">Auction</span>}
      </div>
      <button onClick={() => onBuy(tokenId)} className="buy-btn">
        {isAuction ? 'Place Bid' : 'Buy Now'}
      </button>
    </div>
  </div>
);
