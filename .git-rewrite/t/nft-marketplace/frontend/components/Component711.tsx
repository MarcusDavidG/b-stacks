interface Props711 { value: number; label: string; onChange: (v: number) => void; }
export const Component711 = ({ value, label, onChange }: Props711) => (
  <div className="component-711">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
