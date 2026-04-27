interface Props129 { value: number; label: string; onChange: (v: number) => void; }
export const Component129 = ({ value, label, onChange }: Props129) => (
  <div className="component-129">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
