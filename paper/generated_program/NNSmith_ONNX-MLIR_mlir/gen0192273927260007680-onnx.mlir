module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<[[[[5, 6]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %9 = llvm.bitcast %8 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%38] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(16 : index) : i64
    %43 = llvm.add %41, %42  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.sub %42, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.urem %49, %42  : i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %54 = llvm.insertvalue %45, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %37, %61[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %34, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %35, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%66 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb11
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%71 : i64)
  ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb10
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%76 : i64)
  ^bb5(%79: i64):  // 2 preds: ^bb4, ^bb9
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%81 : i64)
  ^bb7(%84: i64):  // 2 preds: ^bb6, ^bb8
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %86 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.load %87 : !llvm.ptr<i32>
    %89 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mul %69, %90  : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mul %74, %92  : i64
    %94 = llvm.add %91, %93  : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %79, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.add %97, %84  : i64
    %99 = llvm.getelementptr %89[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.load %99 : !llvm.ptr<i32>
    %101 = llvm.mul %88, %100  : i32
    %102 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %69, %103  : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %74, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %79, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %84  : i64
    %112 = llvm.getelementptr %102[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %112 : !llvm.ptr<i32>
    %113 = llvm.add %84, %83  : i64
    llvm.br ^bb7(%113 : i64)
  ^bb9:  // pred: ^bb7
    %114 = llvm.add %79, %78  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb10:  // pred: ^bb5
    %115 = llvm.add %74, %73  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb11:  // pred: ^bb3
    %116 = llvm.add %69, %68  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb12:  // pred: ^bb1
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i64>
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i64> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i64> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i64>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %123, %147[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %120, %149[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %121, %150[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%152 : i64)
  ^bb13(%155: i64):  // 2 preds: ^bb12, ^bb23
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%157 : i64)
  ^bb15(%160: i64):  // 2 preds: ^bb14, ^bb22
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%162 : i64)
  ^bb17(%165: i64):  // 2 preds: ^bb16, ^bb21
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%167 : i64)
  ^bb19(%170: i64):  // 2 preds: ^bb18, ^bb20
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %172 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mul %155, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %160, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %165, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.add %180, %170  : i64
    %182 = llvm.getelementptr %172[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.sext %183 : i32 to i64
    %185 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mul %155, %186  : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %160, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %165, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.add %193, %170  : i64
    %195 = llvm.getelementptr %185[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %195 : !llvm.ptr<i64>
    %196 = llvm.add %170, %169  : i64
    llvm.br ^bb19(%196 : i64)
  ^bb21:  // pred: ^bb19
    %197 = llvm.add %165, %164  : i64
    llvm.br ^bb17(%197 : i64)
  ^bb22:  // pred: ^bb17
    %198 = llvm.add %160, %159  : i64
    llvm.br ^bb15(%198 : i64)
  ^bb23:  // pred: ^bb15
    %199 = llvm.add %155, %154  : i64
    llvm.br ^bb13(%199 : i64)
  ^bb24:  // pred: ^bb13
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.null : !llvm.ptr<i64>
    %205 = llvm.getelementptr %204[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i64> to i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.add %206, %207  : i64
    %209 = llvm.call @malloc(%208) : (i64) -> !llvm.ptr<i8>
    %210 = llvm.bitcast %209 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i64> to i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.sub %207, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.urem %214, %207  : i64
    %216 = llvm.sub %214, %215  : i64
    %217 = llvm.inttoptr %216 : i64 to !llvm.ptr<i64>
    %218 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %219 = llvm.insertvalue %210, %218[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %200, %222[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.insertvalue %201, %223[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.insertvalue %202, %224[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.insertvalue %201, %225[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.insertvalue %202, %226[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %203, %227[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%229 : i64)
  ^bb25(%232: i64):  // 2 preds: ^bb24, ^bb32
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%234 : i64)
  ^bb27(%237: i64):  // 2 preds: ^bb26, ^bb31
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%239 : i64)
  ^bb29(%242: i64):  // 2 preds: ^bb28, ^bb30
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %244 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.add %232, %237  : i64
    %246 = llvm.add %245, %242  : i64
    %247 = llvm.getelementptr %244[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %6, %247 : !llvm.ptr<i64>
    %248 = llvm.add %242, %241  : i64
    llvm.br ^bb29(%248 : i64)
  ^bb31:  // pred: ^bb29
    %249 = llvm.add %237, %236  : i64
    llvm.br ^bb27(%249 : i64)
  ^bb32:  // pred: ^bb27
    %250 = llvm.add %232, %231  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb33:  // pred: ^bb25
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%251 : i64)
  ^bb34(%254: i64):  // 2 preds: ^bb33, ^bb44
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%256 : i64)
  ^bb36(%259: i64):  // 2 preds: ^bb35, ^bb43
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%261 : i64)
  ^bb38(%264: i64):  // 2 preds: ^bb37, ^bb42
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%266 : i64)
  ^bb40(%269: i64):  // 2 preds: ^bb39, ^bb41
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %271 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %254, %272  : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %259, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %264, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.add %279, %269  : i64
    %281 = llvm.getelementptr %271[%280] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %282 = llvm.load %281 : !llvm.ptr<i64>
    %283 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.add %254, %259  : i64
    %285 = llvm.add %284, %264  : i64
    %286 = llvm.getelementptr %283[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %287 = llvm.load %286 : !llvm.ptr<i64>
    %288 = llvm.add %287, %282  : i64
    %289 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %290 = llvm.add %254, %259  : i64
    %291 = llvm.add %290, %264  : i64
    %292 = llvm.getelementptr %289[%291] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %288, %292 : !llvm.ptr<i64>
    %293 = llvm.add %269, %268  : i64
    llvm.br ^bb40(%293 : i64)
  ^bb42:  // pred: ^bb40
    %294 = llvm.add %264, %263  : i64
    llvm.br ^bb38(%294 : i64)
  ^bb43:  // pred: ^bb38
    %295 = llvm.add %259, %258  : i64
    llvm.br ^bb36(%295 : i64)
  ^bb44:  // pred: ^bb36
    %296 = llvm.add %254, %253  : i64
    llvm.br ^bb34(%296 : i64)
  ^bb45:  // pred: ^bb34
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.null : !llvm.ptr<i1>
    %302 = llvm.getelementptr %301[%297] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<i1> to i64
    %304 = llvm.mlir.constant(16 : index) : i64
    %305 = llvm.add %303, %304  : i64
    %306 = llvm.call @malloc(%305) : (i64) -> !llvm.ptr<i8>
    %307 = llvm.bitcast %306 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i1> to i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.sub %304, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.urem %311, %304  : i64
    %313 = llvm.sub %311, %312  : i64
    %314 = llvm.inttoptr %313 : i64 to !llvm.ptr<i1>
    %315 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %316 = llvm.insertvalue %307, %315[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.insertvalue %314, %316[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.insertvalue %318, %317[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %297, %319[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %298, %320[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %299, %321[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %298, %322[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.insertvalue %299, %323[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.insertvalue %300, %324[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%326 : i64)
  ^bb46(%329: i64):  // 2 preds: ^bb45, ^bb53
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%331 : i64)
  ^bb48(%334: i64):  // 2 preds: ^bb47, ^bb52
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%336 : i64)
  ^bb50(%339: i64):  // 2 preds: ^bb49, ^bb51
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %341 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.add %329, %334  : i64
    %343 = llvm.add %342, %339  : i64
    %344 = llvm.getelementptr %341[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.add %329, %334  : i64
    %348 = llvm.add %347, %339  : i64
    %349 = llvm.getelementptr %346[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %350 = llvm.load %349 : !llvm.ptr<i64>
    %351 = llvm.icmp "sgt" %345, %350 : i64
    %352 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.add %329, %334  : i64
    %354 = llvm.add %353, %339  : i64
    %355 = llvm.getelementptr %352[%354] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %351, %355 : !llvm.ptr<i1>
    %356 = llvm.add %339, %338  : i64
    llvm.br ^bb50(%356 : i64)
  ^bb52:  // pred: ^bb50
    %357 = llvm.add %334, %333  : i64
    llvm.br ^bb48(%357 : i64)
  ^bb53:  // pred: ^bb48
    %358 = llvm.add %329, %328  : i64
    llvm.br ^bb46(%358 : i64)
  ^bb54:  // pred: ^bb46
    %359 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    %360 = llvm.insertvalue %65, %359[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %361 = llvm.insertvalue %325, %360[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %361 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(4 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %38[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %39[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %38[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %39[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %38[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %39[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.getelementptr %29[%60] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %61 : !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(3 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.getelementptr %29[%87] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %88 : !llvm.ptr<ptr<i8>>
    %89 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %89 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

