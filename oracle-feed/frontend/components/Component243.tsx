interface Props243 { value: number; label: string; onChange: (v: number) => void; }
export const Component243 = ({ value, label, onChange }: Props243) => (
  <div className="component-243">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
